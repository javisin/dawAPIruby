class ProductSerializer < ActiveModel::Serializer
  include Rails.application.routes.url_helpers
  def getSizes
    self.object.sizes.map do |size|
      size.value
    end
  end

  def getImage
    rails_blob_path(object.image, only_path: true) if object.image.attached?
  end
  attributes :id, :name, :brand, :description, :gender, :colors, :price, :new, :trending, :getImage,:getSizes
end