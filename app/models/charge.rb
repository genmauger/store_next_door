class Charge < ApplicationRecord

  def price_in_dollars
    price.to_f / 100.00
  end

end