class OrderCompleteMailer < ApplicationMailer
    def send_when_order_complete(user)
        @user = user
        mail to:      user.email,
             subject: "ご注文完了のお知らせ"
      end
end
