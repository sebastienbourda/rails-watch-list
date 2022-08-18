# frozen_string_literal: true

# Movies Controller
class MoviesController < ApplicationController
  def index
    @movies = Movie.all
  end
end
