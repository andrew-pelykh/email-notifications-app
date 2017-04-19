class ApplicationMailer < ActionMailer::Base
  default from: "noreply@example.com"
  default_url_options[:host] = 'localhost:3000'
  layout 'mailer'
end
