class UsersController < ApplicationController

  def show
    @user = current_user
    @favourites = Favourite.all
  end

  def index
    if params[:query].present?
      sql_subquery = "genre ILIKE :query"
      @Tags = Tag.where(sql_subquery, query: "%#{params[:query]}%")
        else
      @jobs = Job.all
        end
  end
end
