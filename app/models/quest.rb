class Quest < ApplicationRecord
  validates :name, presence: true

  scope :completed, -> { where(status: true) }
  scope :pending, -> { where(status: false) }
end
