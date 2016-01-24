class RemoveLimitFromIntegerDrPhone < ActiveRecord::Migration
  def change
    change_column :customers, :dr_phone, :integer, limit: 8
  end
end
