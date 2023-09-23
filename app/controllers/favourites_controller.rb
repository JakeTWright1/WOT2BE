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
    end
  end

  def destroy
    @favourite = Favourite.find(params[:id])
    @favourite.destroy
    redirect_to user_favourites_path
  end

  private

  def favourite_params
    params.require(:favourite).permit(:user_id, :job_id, :position)
  end
end
