class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers do |t|
      t.string :first_name
      t.string :middle_name
      t.string :last_name
      t.date :dob
      t.integer :phone
      t.string :dr_name
      t.integer :dr_phone
      t.integer :dr_fax
      t.string :shipping_address
      t.string :billing_address
      t.string :billing_info
      t.string :smoker
      t.string :drinker
      t.text :eye_disorders
      t.text :emotional_mood_disorders
      t.string :heart_disease
      t.string :high_lipids
      t.text :neurological_disorders
      t.text :kidney_disorders
      t.text :stomach_disorders
      t.string :diabetes
      t.text :other_disorders
      t.text :drug_alergies

      t.timestamps null: false
    end
  end
end
