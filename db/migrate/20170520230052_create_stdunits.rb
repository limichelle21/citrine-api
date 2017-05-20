class CreateStdunits < ActiveRecord::Migration[5.1]
  def change
    create_table :stdunits do |t|
      t.string :name
      t.float :factor

      t.timestamps
    end
  end
end
