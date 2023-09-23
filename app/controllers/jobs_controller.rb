class JobsController < ApplicationController
  before_action :set_job, only: :show

  def index
    @industries = Industry.all
    @subjects = Subject.all
    if params[:query].present? && @industries.exists?(name: "#{params[:query].capitalize}")
      industry_name = params[:query]
      found_jobs = Job.joins(:industry).where("LOWER(industries.name) LIKE ?", "%#{industry_name.downcase}%")
      @results = found_jobs
    elsif params[:query].present? && @subjects.exists?(name: "#{params[:query]}")
      subject_name = params[:query]
      @subject = Subject.where("LOWER(subjects.name) LIKE ?", "%#{subject_name.downcase}%").first
      @results = @subject.jobs
    else
      @results = []
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
