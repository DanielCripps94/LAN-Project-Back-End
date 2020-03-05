class Event < ApplicationRecord
    belongs_to :user
    has_many :comments
    has_many :tickets
    has_many :users, through: :tickets
end
