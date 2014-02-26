class Post < ActiveRecord::Base
  belongs_to :battle, :dependent => :destroy
  belongs_to :user
  
  has_many :posts
end
