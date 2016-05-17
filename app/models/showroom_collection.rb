class ShowroomCollection < ActiveRecord::Base
  belongs_to :showroom
  belongs_to :collection

  validates :showroom_id, presence: true, uniqueness: {scope: 
:collection_id}
  validates :collection_id, presence: true
end
