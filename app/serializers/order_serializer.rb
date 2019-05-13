class OrderSerializer < ActiveModel::Serializer
  attributes :id, :created_at, :invoice_id
  belongs_to :customer
  has_many :products, serializer: OrdersProductsSerializer
end
