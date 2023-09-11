class AddIndustryToJobs < ActiveRecord::Migration[7.0]
  def change
    add_column :jobs, :industry_id, :integer
  end
end
