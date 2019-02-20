class AddSlugToTreatment < ActiveRecord::Migration[5.1]
  def change
    add_column :treatments, :slug, :string
    add_index :treatments, :slug, unique: true
  end
end
