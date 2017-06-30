class UsersController < ApplicationController
  before_action :set_user, only: [:show, :update, :destroy]

  # GET /users
  def index
    @users = User.all
    json_response(@users)
  end

  # POST /users
  def create
    # TODO: check other conditions
    @user = User.create(user_params)
    json_response(@user, :created)
  end

  # GET /users/:id
  def show
    json_response(@user)
  end

  # PUT /users/:id
  def update
  end

  # DELETE /users/:id
  def destroy
  end

  private

    def user_params
      params.permit(
        :name,
        :password_digest,
        :email,
        :date_of_birth
      )
    end

    def set_user
      @user = User.find(params[:id])
    end
end
