# frozen_string_literal: true

# Bookmark Model
class Bookmark < ApplicationRecord
  belongs_to :movie
  belongs_to :list

  validates :list, uniqueness: { scope: :movie, message: 'This movie is already in this list.' }

  validates :comment, presence: true
  validates :comment, length: { minimum: 6 }
end
