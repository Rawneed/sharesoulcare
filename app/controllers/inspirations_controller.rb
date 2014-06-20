class InspirationsController < ApplicationController
 before_filter :authenticate_user!, :except => [:show, :index]
 before_action :set_inspiration, only: [:show, :edit, :update, :destroy]
  
 def index
  # @inspirations = Inspiration.all
  @inspirations = Inspiration.tagged_with(:tag)
  @inspirations = Inspiration.paginate(page: params[:page])
 end
 
 def show
 end

 def new
  @inspiration = Inspiration.new
 end

 def permitted_params
  params.permit :utf8, :link
 end

  def edit
  end

  # POST /inspirations
  # POST /inspirations.json
  def create
    @inspiration = Inspiration.new(inspiration_params)

    respond_to do |format|
      if @inspiration.save
        format.html { redirect_to @inspiration, notice: 'Inspiration was successfully created.' }
        format.json { render action: 'show', status: :created, location: @inspiration }
      else
        format.html { render action: 'new' }
        format.json { render json: @inspiration.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @inspiration.update(inspiration_params)
        format.html { redirect_to @inspiration, notice: 'Inspiration was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @inspiration.errors, status: :unprocessable_entity }
      end
    end
  end

 def destroy
  @inspiration.destroy
  respond_to do |format|
   format.html { redirect_to inspirations_url }
   format.json { head :no_content }
 end
end

 private
  def set_inspiration
   @inspiration = Inspiration.find(params[:id])
  end

  def inspiration_params
  params.require(:inspiration).permit(:link, :title, :tag_list)
  end
end
