class GroupsController < ApplicationController
  before_action :authenticate_user!
  def index
    @groups = current_user.groups
  end

  def new
    @group = Group.new
  end

  def create
    group = Group.new(group_params)
    group.author_id = current_user.id

    if group.save
      redirect_to groups_path, notice: 'Group successfully created.'
    else
      redirect_to new_group_path, notice: 'Group could not be created.'
    end
  end

  private

  def group_params
    params.require(:new_group).permit(:name, :icon)
  end
end
