class AddAttachmentLogoToDrugStores < ActiveRecord::Migration
  def self.up
    change_table :drug_stores do |t|
      t.attachment :logo
    end
  end

  def self.down
    remove_attachment :drug_stores, :logo
  end
end
