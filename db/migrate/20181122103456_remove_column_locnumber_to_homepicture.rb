class RemoveColumnLocnumberToHomepicture < ActiveRecord::Migration[5.1]
  def change
  	remove_column :homepictures, :locnumber, :string
  end
end
