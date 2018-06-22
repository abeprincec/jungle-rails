class OrderReceipt < ApplicationMailer

    def order_receipt(order)
        @order = order
        mail(to: @order.email, subject: "Your Jungle Order : #{order.id}")
    end
end
