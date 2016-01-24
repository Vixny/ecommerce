class RemoveLimitFromIntegerDrFax < ActiveRecord::Migration
  def change
    change_column :customers, :dr_fax, :integer, limit: 8
  end
end
