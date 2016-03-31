class Comment < ActiveRecord::Base
  has_many :replies, class_name: "Comment", foreign_key: "parent_id"
  belongs_to :parent, class_name: "Comment"
  # You're going to have more stuff here
end
