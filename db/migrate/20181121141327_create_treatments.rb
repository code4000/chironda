class CreateTreatments < ActiveRecord::Migration[5.1]
  def change
    create_table :treatments do |t|
      t.string :category
      t.string :speciality
      t.text :content
      t.integer :price
      t.string :duration
      t.string :link

      t.timestamps
    end
  end
end
