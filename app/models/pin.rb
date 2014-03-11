class Pin < ActiveRecord::Base
  
  belongs_to :user
	has_attached_file :image, 
		:styles => { :medium => "300x300>", :thumb => "100x100>" },
    :storage => :dropbox,
    :dropbox_credentials => Rails.root.join("config/dropbox.yml"),
    :dropbox_options => {}
		
	validates :image, presence: true
  validates :description, presence: true
end
