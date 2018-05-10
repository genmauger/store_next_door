class ApplicationMailer < ActionMailer::Base
  default from: ENV.fetch('SYSTEM_EMAIL')
  layout 'mailer'
end

