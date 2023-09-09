class FavouritesController < ApplicationController
  def index
    @favourites = Favourite.all
  end

  def create
    @job = Job.find(params[:job_id])

    if current_user.favourite_jobs.include?(@job)
      redirect_to user_favourites_path, notice: "Job already favourited."
    else
      current_user.favourite_jobs << @job
      redirect_to user_favourites_path, notice: "Job favourited successfully."
    end
  end

  private

  def favourite_params
    params.require(:favourite).permit(:user_id, :job_id)
  end
end
