class AddAlternativeToJob < ActiveRecord::Migration[7.0]
  def change
    add_column :jobs, :alternative, :string
  end
end
