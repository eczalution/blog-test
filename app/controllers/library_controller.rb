class LibraryController < ApplicationController
  def index
    @authors = Author.all
  end
end
