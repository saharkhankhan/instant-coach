class UserImageUploader < CarrierWave::Uploader::Base
  include Cloudinary::CarrierWave
end
