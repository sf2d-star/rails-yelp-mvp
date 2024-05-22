class Restaurant < ApplicationRecord
  has_many :reviews

  CATEGORY = %w[chinese italian japanese french belgian]
  validates :name, :address, presence: true
  validates :category, presence: true, inclusion: { in: CATEGORY }

end
