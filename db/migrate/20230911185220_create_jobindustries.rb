class CreateJobindustries < ActiveRecord::Migration[7.0]
  def change
    create_table :jobindustries do |t|
      t.references :industry, null: false, foreign_key: true
      t.references :job, null: false, foreign_key: true

      t.timestamps
    end
  end
end
