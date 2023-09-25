class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
    @array = Job.all
    @jobs = @array.shuffle
  end
end
