class Archief < ActiveRecord::Base
	belongs_to :user
	has_attached_file :avatar,
    :storage => :dropbox,
    :dropbox_credentials => Rails.root.join("config/dropbox.yml"),
    :dropbox_options => {:path => ":style/:id_:filename"}
end
