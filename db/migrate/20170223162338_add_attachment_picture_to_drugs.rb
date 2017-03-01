class AddAttachmentPictureToDrugs < ActiveRecord::Migration
  def self.up
    change_table :drugs do |t|
      t.attachment :picture
    end
  end

  def self.down
    remove_attachment :drugs, :picture
  end
end
