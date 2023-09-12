class RemovePublicFromJobs < ActiveRecord::Migration[7.0]
  def change
    remove_column :jobs, :video_public_id, :string
  end
end
