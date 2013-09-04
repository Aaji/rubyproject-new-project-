class Image < ActiveRecord::Base
  attr_accessible :title, :body, :image

  validates :description, :presence => :true
  validates_attachment :image, :presence => :true,
  								:content_type => {content_type: ['image/jpeg', 'image/jpg', 'image/png', 'image/gif']}
  								:size => {less_than: 10.megabytes}
  has_attached_file :description
end
