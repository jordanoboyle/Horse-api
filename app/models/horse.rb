class Horse < ApplicationRecord

  def tax_total
    tax_rate = 0.095
    taxes = price.to_f * tax_rate
    return taxes
  end

  def price_total 
    total = price + tax_total
    return total
  end

  def kilos
    weight_kilos = weight * 0.455
    return weight_kilos.round(2)
  end

end
