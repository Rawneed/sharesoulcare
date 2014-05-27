class GroupController < ApplicationController
  def index
  end

  def manage
   @group = Group.new(params[:group])
   @group.users << current_user

  if @group.save
    #etc ..
  end
end
