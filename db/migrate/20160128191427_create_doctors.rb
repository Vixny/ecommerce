class CreateDoctors < ActiveRecord::Migration
  def change
    create_table :doctors do |t|
      t.string :doctors_name
      t.string :clinic_name
      t.string :clinic_address
      t.string :clinic_phone
      t.string :doctors_direct_phone
      t.string :fax_number
      t.string :email

      t.timestamps null: false
    end
  end
end
