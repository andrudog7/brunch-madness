class User < ApplicationRecord
    has_many :scores

    def highest_tips
        self.scores.order(tips: :desc).limit(5)
    end
end
