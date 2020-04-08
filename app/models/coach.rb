class Coach < ApplicationRecord
    has_many :exercises
    # has_and_belongs_to_many :exercises
end
