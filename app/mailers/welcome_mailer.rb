class WelcomeMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.welcome_mailer.new_record_notification.subject
  #
  default from: "postmaster@sandbox75ae38d16c2c4e8d984519e322cb709d.mailgun.org"

  def new_record_notification(record)
    @record = record
    @greeting = "Hi"
    mail to: "hiscoreservices@gmail.com", subject: "Success! You did it."

  end
end
