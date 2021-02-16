class ScoresController < ApplicationController

    def index
        byebug
        render json: score 
    end

    def high_scores 
        score = Score.all.order(tips: :desc).limit(5)
        render json: score.to_json(include: {user: {only: :username}})
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
