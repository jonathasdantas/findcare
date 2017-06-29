class UsersController < ApplicationController
  before_action :set_user, only: [:show, :update, :destroy]

  def index
    @users = User.all
    json_response(@users)
  end

  def create
  end

  def show
  end

  def update
  end

  def destroy
  end

  private

  def set_user
    @todo = User.find(params[:id])
  end
end
