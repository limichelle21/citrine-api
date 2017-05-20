class AddStdunitToUnits < ActiveRecord::Migration[5.1]
  def change
      add_column :units, :stdunit_id, :integer
      add_index :units, :stdunit_id
  end
end
