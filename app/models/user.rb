class User < ApplicationRecord
  has_one :cart
  has_many :orders
  has_many :blog_posts
  has_many :comments
end
