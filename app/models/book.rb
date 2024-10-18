class Book < ApplicationRecord
  validates :title, :author, presence: true
  validates :description, length: { maximum: 500 }
  validates :title, format: { with: /test/ }
end
