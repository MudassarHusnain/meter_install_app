class RenameSubDivisionsIdToSubDivisionIdInMeters < ActiveRecord::Migration[7.1]
  def change
    rename_column :meters, :sub_divisions_id, :sub_division_id
  end
end
