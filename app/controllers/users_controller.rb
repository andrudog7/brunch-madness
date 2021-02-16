class UsersController < ApplicationController

    def create
        user = User.find_or_create_by(:username => params[:username])
        if user 
            render json: user.to_json(include: {highest_tips: {except: [:created_at, :updated_at, :duration]}}, only: [:username, :id])
        else
            render json: {errors: user.errors}
        end
    end
end
