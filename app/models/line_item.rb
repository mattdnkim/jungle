class LineItem < ActiveRecord::Base

  belongs_to :order     #FK
  belongs_to :product   #FK

  monetize :item_price_cents, numericality: true
  monetize :total_price_cents, numericality: true

end
