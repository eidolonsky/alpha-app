class Photo < ApplicationRecord
	validates :title, :img_url, presence: true
	validates :title, uniqueness: true
	validates :img_url, allow_blank: true, format: { 
		with: %r{\.(gif|jpg|png)\Z}i, 
		message: 'must be a URL for GIF, JPG or PNG image.'
	}

	has_many :taggings
	has_many :tags, through: :taggings

	def tag_list
  	self.tags.collect do |tag|
    	tag.name
  	end.join(", ")
	end
	def tag_list=(tags_string)
  	tag_names = tags_string.split(",").collect{|s| s.strip.downcase}.uniq
  	new_or_found_tags = tag_names.collect { |name| Tag.find_or_create_by(name: name) }
  	self.tags = new_or_found_tags
	end
end
