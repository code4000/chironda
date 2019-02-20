class AddTwoColumnsToHomepictures < ActiveRecord::Migration[5.1]
  def change
    add_column :homepictures, :locnumber, :string
    add_column :homepictures, :locnumber2, :string
  end
end
