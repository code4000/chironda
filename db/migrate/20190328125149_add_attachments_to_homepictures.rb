class AddAttachmentsToHomepictures < ActiveRecord::Migration[5.1]
  def self.up
    change_table :homepictures do |t|
      t.attachment :homeslider1
      t.attachment :homeslider2
      t.attachment :homeslider3
      t.attachment :about
      t.attachment :testimonial
      t.attachment :pricing
      t.attachment :contact
    end
  end

  def self.down
    remove_attachment :homepictures, :homeslider1
    remove_attachment :homepictures, :homeslider2
    remove_attachment :homepictures, :homeslider3
    remove_attachment :homepictures, :about
    remove_attachment :homepictures, :testimonial
    remove_attachment :homepictures, :pricing
    remove_attachment :homepictures, :contact
  end
end
