class OrderMailer < ActionMailer::Base
  default from: "store@homestead"
  def order_confirmation order
    @order = order
    mail to: order.user.email, subject: "Your order(##{order.id})"
  end
end