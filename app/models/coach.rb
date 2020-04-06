class Coach < ApplicationRecord
    has_many :exercises
    has_many :user, through: :exercises
end
