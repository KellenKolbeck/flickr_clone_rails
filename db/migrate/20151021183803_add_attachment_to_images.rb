class AddAttachmentToImages < ActiveRecord::Migration
  def change
    add_column :images, :photo, :string
  end
end
