class RemoveDescriptionFromJobs < ActiveRecord::Migration[7.0]
  def change
    remove_column :jobs, :description_tags
  end
end
