class Event < ApplicationRecord
  has_and_belongs_to_many :stories
  
  validates :name, presence: true
end
