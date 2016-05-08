class ShowroomCollection < ActiveRecord::Base
  belongs_to :showroom_id
  belongs_to :collection_id
end
