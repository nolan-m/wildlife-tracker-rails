class Sighting < ActiveRecord::Base
  belongs_to :animal
  belongs_to :region
  validates :date, presence: true
  validates :time, presence: true

end
