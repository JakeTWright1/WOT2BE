class FavouritesController < ApplicationController
  def index
    @favourites = Favourite.all
  end

  def create
    @job = Job.find(params[:job_id])
    if current_user.favourite_jobs.include?(@job)
      redirect_to user_favourites_path, notice: "Job already favourited."
    else
      favourite = Favourite.new(user: current_user, job: @job)
      favourite.save!
      redirect_to job_path(@job)
    end
  end

  def destroy
    @favourite = Favourite.find(params[:id])
    @favourite.destroy
    redirect_back_or_to "/"
  end

  private

  def favourite_params
    params.require(:favourite).permit(:user_id, :job_id, :position)
  end
end
