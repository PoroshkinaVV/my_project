class Showpiece < ActiveRecord::Base
  belongs_to :collection

  validates :name, presence: true, uniqueness: {scope: :collection_id}
  validates :creation_century, presence: true, numericality: 
{only_integer: true, greater_than: 0, less_than: 21}
  validates :insurance, presence: true, numericality: {greater_than: 0}
  validates :height, presence: true, numericality: {greater_than: 0}
  validates :length, presence: true, numericality: {greater_than: 0}
  validates :temperature_control, presence: true
  validates :wet_control, presence: true
  validates :people_protection, presence: true
  validates :collection_id, presence: true

end
