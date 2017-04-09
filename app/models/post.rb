class Post < ActiveRecord::Base
  belongs_to :category
  default_scope -> { order(created_at: :desc) }

  validates :category_id, presence: true
  validates :denomination, presence: true, length: { maximum: 50 }
  validates :date, presence: true, length: { maximum: 50 }
  validates :metal, presence: true, length: { maximum: 50 }
  validates :mint, presence: true, length: { maximum: 50 }
  validates :details, presence: true, length: { maximum: 200 }
  validates :pictures, presence: true
  mount_uploaders :pictures, PictureUploader
end
