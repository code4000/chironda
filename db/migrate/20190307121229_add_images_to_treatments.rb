class AddImagesToTreatments < ActiveRecord::Migration[5.1]
  def change
    add_attachment :treatments, :image
    add_attachment :treatments, :image1
    add_attachment :treatments, :image2
    add_attachment :treatments, :image3
    add_attachment :treatments, :image4
    add_attachment :treatments, :image5
    add_attachment :treatments, :image6
  end
end
