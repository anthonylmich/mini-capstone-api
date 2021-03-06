class ProductSerializer < ActiveModel::Serializer
  attributes :id, :name, :price, :image_url, :description, :tax, :total, :is_discounted?

  belongs_to :supplier
  has_many :images
end
