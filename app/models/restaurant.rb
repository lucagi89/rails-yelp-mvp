class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy
  validates :name, presence: true
  validates :address, presence: true
  validates :category, presence: true, inclusion: { in: [ "chinese", "italian", "japanese", "french", "belgian" ] }

  before_validation :normalize_category

  private

  def normalize_category
    self.category = category.downcase.strip if category.present?
  end
end
