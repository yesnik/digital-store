class Comment < ApplicationRecord
  # Rails thinks that Commentable model exists. In 'comments' table
  # we created fields: :commentable_type, :commentable_id
  belongs_to :commentable, polymorphic: true
  belongs_to :user
end
