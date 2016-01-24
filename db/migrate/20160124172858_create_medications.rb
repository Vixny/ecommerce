class CreateMedications < ActiveRecord::Migration
  def change
    create_table :medications do |t|
      t.string :name
      t.string :generic_name
      t.string :int_name
      t.boolean :prescription_required, default: false
      t.integer :quantity
      t.float :price
      t.string :manufacturer
      t.string :origin
      t.boolean :is_pack_size_splittable, default: false

      t.timestamps null: false
    end
  end
end
