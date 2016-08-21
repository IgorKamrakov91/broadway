class Play < ApplicationRecord
  belongs_to :category
  belongs_to :user
  has_many :reviews

  has_attached_file :play_img, styles: { play_index: "250x300>", play_show: "325x475>" }
  validates_attachment_content_type :play_img, content_type: /\Aimage\/.*\z/
end
