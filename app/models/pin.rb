class Pin < ActiveRecord::Base
  
  belongs_to :user
	has_attached_file :image, 
		:styles => { :medium => "300x300>", :thumb => "100x100>" },
    :storage => :dropbox,
    :dropbox_credentials => Rails.root.join("config/dropbox.yml"),
    :dropbox_options => {}
		
	validates_attachment_content_type :image, :content_type => %w(image/jpeg image/jpg image/png)
	validates :image, presence: true
  validates :description, presence: true
end
