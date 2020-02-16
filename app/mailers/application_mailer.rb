class ApplicationMailer < ActionMailer::Base
  default from: "az.5s.fmt@gmail.com",
          subject: "ご注文完了のお知らせ"
  layout 'mailer'
end
