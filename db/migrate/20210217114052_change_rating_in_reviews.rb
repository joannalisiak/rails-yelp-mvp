# frozen_string_literal: true

class ChangeRatingInReviews < ActiveRecord::Migration[6.0]
  def change
    change_column :reviews, :rating, :integer
  end
end
