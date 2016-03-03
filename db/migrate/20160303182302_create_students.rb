class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.references :section, index: true, foreign_key: true
      t.references :house, index: true, foreign_key: true
      t.string :name
      t.string :gender
      t.date :dob
      t.text :address
      t.string :fathers_name
      t.string :blood_type
      t.integer :emergency_contact, :limit => 10

      t.timestamps null: false
    end
  end
end
