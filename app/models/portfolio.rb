class Portfolio < ApplicationRecord
  has_attached_file :theme_image, styles: { thumb:  "800x600>"}, default_url: ""
  validates_attachment_content_type :theme_image, :content_type => /\Aimage\/.*\Z/

  # Enum
  enum category: {
    camera: 1,
    web: 2,
    network: 3,
    security: 4
  }
end
