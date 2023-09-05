class JobsController < ApplicationController
  before_action :set_job, only: :show

  def index
    @jobs = Job.all
  end

  def show
  end

  def new
    @job = Job.new
    @tags = Tag.all
  end

  def create
    @job = Job.new(job_params)
    @job.user_id = current_user.id
    if @job.save
      redirect_to job_path(@job)
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def job_params
    params.require(:job).permit(:title, :average_salary, :duties, :best_bits, :worst_bits, :qualifications, :video, :description_tags)
  end

  def set_job
    @job = Job.find(params[:id])
  end
end
