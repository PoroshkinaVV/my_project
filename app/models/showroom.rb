class Showroom < ActiveRecord::Base
  has_many :showroom_collections

  validates :name, presence: true, uniqueness: true

end
