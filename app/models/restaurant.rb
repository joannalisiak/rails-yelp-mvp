# frozen_string_literal: true

class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy

  validates :name, presence: true
  validates :address, presence: true
  CATEGORIES = %w[chinese italian japanese french belgian].freeze
  validates :category, presence: true, inclusion: { in: CATEGORIES }
end
