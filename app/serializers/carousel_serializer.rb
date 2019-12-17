class CarouselSerializer < ActiveModel::Serializer
  include Rails.application.routes.url_helpers
  attributes :id, :getImage

  def getImage
    rails_blob_path(object.image, only_path: true) if object.image.attached?
  end
end