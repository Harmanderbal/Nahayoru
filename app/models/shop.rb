class Shop < ActiveRecord::Base
  attr_accessible :name, :address, :tel, :category
  attr_accessible :avatar_content_type
  attr_accessible :avatar

  has_attached_file :avatar, :styles => { :medium => "300x300>", :thumb => "100x100>" }
  #has_secure_password

  validates_attachment_size :avatar, :less_than => 1.megabytes
  validates_attachment_content_type :avatar, :content_type => ['image/jpeg', 'image/jpg', 'image/png', 'image/gif']

end