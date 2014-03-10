class Idea < ActiveRecord::Base
  mount_uploader :picture, PictureUploader

  validates_presence_of :name, :description

  belongs_to :user
  has_many :comments
  has_many :censorships

  scope :published, -> {
    where(draft: false)
  }

end
