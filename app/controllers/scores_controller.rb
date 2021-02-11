class ScoresController < ApplicationController

    def index
    end

    def create 
        user = User.find(params[:user_id])
        score = user.scores.build(score_params)
        if score.save 
            render json: score
        end
    end

    private 

    def score_params
        params.require(:score).permit(:tips, :duration, :tables_served)
    end
end
