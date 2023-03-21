class MoviesController < ApplicationController

  def create
    movie = Movie.create(movie_params)
    render json: movie, status: :created
  end
  
  def index
    movies = Movie.all
    render json: movies
  end

  private

  def movie_params
    params.permit(:title, :year, :length, :director, :description, :poster_url, :category, :discount, :female_director)
  end

end

# When you see a 404 Not Found error:

# Check the Network Tab on the frontend
# Check the Rails Server logs in the backend
# Add a new route to handle the HTTP Verb + Path for this request
# When you see an Unexpected end of JSON input error:

# Check your fetch request
# Check the controller action, and make sure to render json:
# When you need to see data from the request in your controller:

# Add a byebug to your controller method
# Make a request from the browser
# Inspect params in the byebug session
# When you see a 500 Internal Server Error error:

# Open your Rails server log
# Look for the last request that came through
# Find the error message and stack trace to identify where the error originated
