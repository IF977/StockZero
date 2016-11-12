class Product < ActiveRecord::Base
  belongs_to :user
  has_attached_file :image, styles: { medium: "400x400>"}, default_url: "/assets/image_default.png"
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/
end
