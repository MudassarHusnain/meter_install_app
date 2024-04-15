class CreateMeters < ActiveRecord::Migration[7.1]
  def change
    create_table :meters do |t|
      t.string :new_meter_number, null: false
      t.string :reference_no, null: false
      t.string :status
      t.string :older_meter_no
      t.integer :old_meter_reading
      t.integer :new_meter_reading
      t.string :connection_type
      t.datetime :bill_month
      t.float :longitude
      t.float :latitude
      t.references :sub_divisions, null: false, foreign_key: true
      t.string :meter_type
      t.float :kwh_mf
      t.float :sanction_load
      t.string :full_name
      t.text :address
      t.boolean :qc_check, default: false
      t.string :application_no
      t.string :green_meter
      t.string :telco
      t.string :sim_no
      t.string :signal_strength
      t.string :picture_upload

      t.timestamps
    end
  end
end
