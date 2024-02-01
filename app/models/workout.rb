class Workout < ApplicationRecord
  belongs_to :user
  
  validates :name, presence:true, length: {maximum: 50}
  validates :date, presence:true
  validates :duration, presence:true, numericality: { greater_than: 0, less_than: 240 }


end
