class AddPublicidToJobs < ActiveRecord::Migration[7.0]
  def change
    add_column :jobs, :video_public_id, :string
  end
end
