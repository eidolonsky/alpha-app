require 'test_helper'

class PhotoTest < ActiveSupport::TestCase
  test "photo attributes must not be empty" do
  	photo = Photo.new
  	assert photo.invalid?
		assert photo.errors[:title].any?
		assert photo.errors[:img_url].any?
	end
end
