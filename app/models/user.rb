class User < ActiveRecord::Base
  has_secure_password
  has_many :battles
  
  after_initialize :_set_default_role
  
  ROLES = ["admin", "creator"]
  
  validates :email, presence: true
  
  validates :password, 
    presence: true,
    confirmation: true,
    if: :_password_present?
  
  private
    
  def _password_present?
    self.password.present?
  end
  
  def _set_default_role
    self.role ||= "creator"
  end
end
