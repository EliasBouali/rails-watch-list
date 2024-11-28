class BookmarksController < ApplicationController

  def new
    @bookmark = bookmark.new
    @movies = Movie.all
  end
end
