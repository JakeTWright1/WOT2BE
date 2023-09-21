class UsersController < ApplicationController

  def show
    @user = current_user
    @favourites = Favourite.all
  end

  def index

  end
end
