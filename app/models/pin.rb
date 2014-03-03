class Pin < ActiveRecord::Base
  Paperclip.options[:command_path] = 'C:/Program Files/ImageMagick-6.8.8-Q8'
  belongs_to :user
	has_attached_file :image, :styles => { :medium => "300x300>", :thumb => "100x100>" }

	validates :image, presence: true
  validates :description, presence: true
end
