class JobsController < ApplicationController

  def index
    @jobs = Job.all
  end

  def new
    @job = Job.new
  end

  def create
    @job = Job.new(job_params)
    if job.save
      # redirect_to profile or index page
    else
      render :new, status: :unprocessable_entity
  end

  private
    def job_params
      params.require(:job).permit(:title, :average_salary, :duties, :best_bits, :worst_bits, :qualifications, :video_url, :description_tags)
    end

end
