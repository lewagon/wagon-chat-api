class Comment < ActiveRecord::Base
  validates :author, presence: true
  validates :content, presence: true
  validates :channel, presence: true
end
