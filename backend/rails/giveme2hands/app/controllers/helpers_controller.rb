class HelpersController < ApplicationController
  before_action :set_helper, only: [:show, :update, :destroy]

  def index
    @helpers = Helper.all
    json_response(@helpers)
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
    def helper_params
      params.permit(
        :aboutme,
        :objectives,
        :education_level_id,
        :education_field_id,
        :education_place,
        :avaliability_id
      )
    end

    def set_helper
      @helper = Helper.find(params[:id])
    end
end
