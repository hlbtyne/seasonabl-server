class MonthsController < ApplicationController

    def index
        months = Month.all
        render json: months, include: :foods
    end

    def show
        month = Month.find_by(id: params[:id])
        if month
            render json: month
        else
            render json: { error: "Month not found." }, status: 404
        end
    end

end
