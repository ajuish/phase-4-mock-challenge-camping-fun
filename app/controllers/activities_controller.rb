class ActivitiesController < ApplicationController
    before_action :find_activity, only: [:destroy]

    def index
        render json: Activity.all, status: :ok
    end

    def destroy
        @activity.destroy
        render json: @activity
        head :no_content
    end

    private

    def find_activity
        @activity = Activity.find(params[:id])
    end
end
