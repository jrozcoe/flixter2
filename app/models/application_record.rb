class ApplicationRecord < ActiveRecord::Base
  mount_uploader :image, ImageUploader
  self.abstract_class = true
end
