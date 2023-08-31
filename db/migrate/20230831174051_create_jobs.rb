class CreateJobs < ActiveRecord::Migration[7.0]
  def change
    create_table :jobs do |t|
      t.string :title
      t.integer :average_salary
      t.string :duties
      t.string :best_bits
      t.string :worst_bits
      t.string :qualifications
      t.string :video_url
      t.string :description_tags

      t.timestamps
    end
  end
end
