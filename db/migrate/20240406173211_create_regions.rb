class CreateRegions < ActiveRecord::Migration[7.1]
  def change
    create_table :regions do |t|
      t.string :name
      t.references :disco, null: false, foreign_key: true

      t.timestamps
    end
  end
end
