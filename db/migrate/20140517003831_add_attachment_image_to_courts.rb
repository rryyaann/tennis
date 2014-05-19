class AddAttachmentImageToCourts < ActiveRecord::Migration
  def self.up
    change_table :courts do |t|
      t.attachment :image
    end
  end

  def self.down
    drop_attached_file :courts, :image
  end
end
