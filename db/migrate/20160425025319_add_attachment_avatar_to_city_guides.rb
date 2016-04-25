class AddAttachmentAvatarToCityGuides < ActiveRecord::Migration
  def self.up
    change_table :city_guides do |t|
      t.attachment :avatar
    end
  end

  def self.down
    remove_attachment :city_guides, :avatar
  end
end
