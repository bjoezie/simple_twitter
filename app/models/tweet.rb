class Tweet < ActiveRecord::Base
  belongs_to :user
  has_many :tags, dependent: :destroy

  scope :ordered_by_time, -> {order(time_posted: :desc)}
  validates :content, length: {maximum: 280, message: 'max. 280 characters allowed'}
end
