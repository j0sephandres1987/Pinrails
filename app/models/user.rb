class User < ActiveRecord::Base
  has_secure_password
  
  has_many :posts
  has_many :comments
  
  #validates_presence_of :full_name
  #validates_presence_of :username
  #validates_presence_of :email
  #validates_presence_of :password
  
  has_attached_file :avatar, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: ActionController::Base.helpers.asset_path('missing.png')
  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\Z/
end
