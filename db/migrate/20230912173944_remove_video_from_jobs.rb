class RemoveVideoFromJobs < ActiveRecord::Migration[7.0]
  def change
    remove_column :jobs, :video_url, :string
  end
end
