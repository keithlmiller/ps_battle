class Post < ActiveRecord::Base
  belongs_to :battle
  belongs_to :user
  
  has_many :posts
end
