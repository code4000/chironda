class CreateHomepictures < ActiveRecord::Migration[5.1]
  def change
    create_table :homepictures do |t|
      t.string :section
      t.string :hometext1
      t.string :hometext2
      t.string :hometext3
      t.string :contactlocation
      t.string :contactlocation1
      t.string :contactlocation2
      t.string :email
      t.text :time
      t.text :time1
      t.string :number
      t.string :city
      t.string :city1
      t.string :city2
      t.string :locnumber
      t.string :locnumber1
      t.string :locnumber

      t.timestamps
    end
  end
end
