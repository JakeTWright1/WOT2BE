class AddIndustryToJobs < ActiveRecord::Migration[7.0]
  def change
    add_reference :jobs, :industry, null: false, foreign_key: true
  end
end
