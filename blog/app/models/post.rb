class Post < ApplicationRecord
  has_many :comments
  belongs_to :user
  has_attached_file :image, styles: { large: '600x600>', medium: '300x300>',
                                      thumb: '150x150#' }
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/
  validates_presence_of :head, :content
end
