class DropJobIndustries < ActiveRecord::Migration[7.0]
  def change
    drop_table :jobindustries
  end
end
