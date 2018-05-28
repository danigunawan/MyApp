class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :product
  validates :body, presence: true
  validates :user, presence: true
  validates :product, presence: true
  validates :rating, numericality: { only_integer: true }, presence: true
  scope :rating_desc, -> { order(rating: :desc) }
  scope :rating_asc, -> { order(rating: :asc) }
  self.per_page = 2
end
