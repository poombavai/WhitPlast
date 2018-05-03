class MailerNotification < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.mailer_notification.dashboard.subject
  #
  def dashboard(mail)
    @mail = mail
    mail(to: ["ceo@whiteplast.com", "cfo@whiteplast.com", "fmwp2@whiteplast.com"])
  end
end
