class AddAttachmentToAttachments < ActiveRecord::Migration
  def change
    add_attachment :attachments, :attach
  end
end
