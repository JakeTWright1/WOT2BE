class FavouritesController < ApplicationController
  def index
    @favourites = Favourite.all
  end

  def create
    @job = Job.find(params[:job_id])
    current_user.favourite_jobs << @job
    redirect_to jobs_path, notice: "Job favourited successfully."
  end

  private

  def favourite_params
    params.require(:favourite).permit(:user_id, :job_id)
  end
end
