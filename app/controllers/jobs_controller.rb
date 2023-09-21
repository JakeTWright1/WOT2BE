class JobsController < ApplicationController
  before_action :set_job, only: :show

  def index
     if params[:query].present?
      industry_name = params[:query]
      found_jobs = Job.joins(:industry).where("LOWER(industries.name) LIKE ?", "%#{industry_name.downcase}%")
      @jobs = found_jobs.empty? ? Job.all : found_jobs
        else
      @jobs = Job.all
        end
  end

  def show
    @industry = Industry.find_by_id(params[:job_id])
  end

  def new
    @job = Job.new
    @industries = Industry.all
    @subjects = Subject.all
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
    params.require(:job).permit(:title, :average_salary, :duties, :best_bits, :worst_bits, :qualifications, :video, :industry_id, subject_ids: [])
  end

  def set_job
    @job = Job.find(params[:id])
  end
end
