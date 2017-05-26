class Portfolio < ApplicationRecord
  has_attached_file :theme_image, styles: { thumb:  "800x600>"}, default_url: ""
  validates_attachment_content_type :theme_image, :content_type => /\Aimage\/.*\Z/

  # Enum
  enum category: {
    sale: 1,
    intro: 2,
    news: 3,
    album: 4,
    education: 5,
    land: 6,
    restaurant: 7,
    travel: 8
  }
  WEB_TYPES = {
    sale: 'Bán Hàng',
    intro: 'Giới Thiệu',
    news: 'Tin Tức',
    album: 'Album Ảnh',
    education: 'Giáo Dục',
    land: 'Bất Động Sản',
    restaurant: 'Nhà hàng',
    travel: 'Du Lịch'
  }
end







