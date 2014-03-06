class Post < ActiveRecord::Base
  belongs_to :battle, :dependent => :destroy
  belongs_to :user
  attr_accessible :image
  has_attached_file :image, :styles => { :medium => "500x500>", :thumb => "100x100>" }, :default_url
  validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/
  
  has_many :posts
end
