class NotificationMailer < ActionMailer::Base
  default from: "no-reply@coffeehop.com"

  def comment_added
    mail(to: "msd2802@gmail.com",
          subject: "A comment has been added to your place")
  end
end
