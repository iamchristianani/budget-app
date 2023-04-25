class GroupsController < ApplicationController
  def index
    @groups = Group.all
  end

  def new
    @group = Group.new
  end

  def create
    @group = Group.new(group_params)
    @group.author_id = current_user.id
    if @group.save
      flash[:success] = 'Group created successfully'
      redirect_to groups_path
    else
      flash[:danger] = 'Group not created'
      render :new, status: :unprocessable_entity
    end
  end

  private

  def group_params
    params.require(:group).permit(:name, :icon)
  end
end
