class MoviesController < ApplicationController
  def index
    @movies = Facebook.get_object(current_user.token, 'movies?fields=name,picture,studio')
  end
end
