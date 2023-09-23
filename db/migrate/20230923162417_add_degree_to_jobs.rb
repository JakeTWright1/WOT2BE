class AddDegreeToJobs < ActiveRecord::Migration[7.0]
  def change
    add_column :jobs, :degree, :boolean
  end
end
