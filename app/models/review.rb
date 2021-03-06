# frozen_string_literal: true

class Review < ApplicationRecord
  belongs_to :restaurant

  validates :rating, presence: true
  validates :rating, inclusion: { in: (0..5) }
  validates :rating, numericality: { only_integer: true }
  validates :content, presence: true, length: {minimum: 50}
end
