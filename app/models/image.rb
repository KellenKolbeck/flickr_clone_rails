class Image < ActiveRecord::Base
  has_attached_file :photo

  validates :photo, attachment_presence: true
  validates_with AttachmentPresenceValidator, attributes: :photo
  validates_attachment :photo,
    content_type: { content_type: ["image/jpeg", "image/jpg", "image/gif", "image/png"] }
end
