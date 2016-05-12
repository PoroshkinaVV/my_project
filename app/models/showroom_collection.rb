class ShowroomCollection < ActiveRecord::Base
  belongs_to :showroom
  belongs_to :collection
end
