class User < ApplicationRecord
    has_many :scores
    validates :username, presence: :true
    validates :username, uniqueness: :true

    def highest_tips
        self.scores.order(tips: :desc).limit(5)
    end
end
