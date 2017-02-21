class ProductDecorator < Draper::Decorator
  delegate_all

  def truncated_description
      h.truncate(product.text, length: 120)
  end

  def current_amount
    "На складе: #{product.amount} шт."
  end

  def price_in_rur
    "#{product.price} ₽"
  end

  def method_name

  end
end
