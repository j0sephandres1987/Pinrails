class Comment < ActiveRecord::Base
  belongs_to :post
  belongs_to :user
  scope :sorted_by_date_desc, lambda { order("created_at DESC") }
end
