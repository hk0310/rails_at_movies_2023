class MoviesController < ApplicationController
  def index
    # @movies = Movie.all # this creates the N+1 problem, +1 refers to movies whereas N refers to production_companies,
    # in show, this means we are redundantly calling the database which can be expensive.
    @movies = Movie.includes(:production_company).all.order('average_vote DESC')
  end

  def show
    @movie = Movie.find(param[:id])
  end
end
