class UserMailerPreview < ActionMailer::Preview

  def order_email
    OrderMailer.order_confirmation(Order.first)
  end

end

