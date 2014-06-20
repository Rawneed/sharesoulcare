class PrayersController < ApplicationController
  before_filter :authenticate_user!, :except => [:show, :index] 
  before_action :set_prayer, only: [:show, :edit, :update, :destroy]

  def featured
  # @prayer = Prayer.order(:id).limit(1).last
  # Prayer.where("id <= ?", topic.id).destroy_all
  end

  # GET /topics
  # GET /topics.json
  def index
    if params[:tag]
      @prayers = Prayer.tagged_with(params[:tag])
    else
      @prayers = Prayer.paginate(page: params[:page])   
   end
 end

  # GET /topics/1
  # GET /topics/1.json
  def show
  end

  # GET /topics/new
  def new
    @prayer = Prayer.new
  end

  # GET /topics/1/edit
  def edit
  end

  # POST /topics
  # POST /topics.json
  def create
    @prayer = Prayer.new(prayer_params)

    respond_to do |format|
      if @prayer.save
        format.html { redirect_to @prayer, notice: 'Prayer was successfully created.' }
        format.json { render action: 'show', status: :created, location: @prayer }
      else
        format.html { render action: 'new' }
        format.json { render json: @prayer.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /topics/1
  # PATCH/PUT /topics/1.json
  def update
    respond_to do |format|
      if @prayer.update(prayer_params)
        format.html { redirect_to @prayer, notice: 'Prayer was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @topic.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /topics/1
  # DELETE /topics/1.json
  def destroy
    @prayer.destroy
    respond_to do |format|
      format.html { redirect_to prayers_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_prayer
      @prayer = Prayer.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def prayer_params
      params.require(:prayer).permit(:title, :points, :tag_list)
    end
end
