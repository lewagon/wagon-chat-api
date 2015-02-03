class Comment < ActiveRecord::Base
  validates :author, presence: true
  validates :content, presence: true
  validates :promo_id, presence: true, numericality: true
end
