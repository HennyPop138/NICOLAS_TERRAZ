ActionMailer::Base.smtp_settings = {
  address: "smtp.gmail.com",
  port: 587,
  domain: 'gmail.com',
  user_name: ENV['GMAIL_ADDRESS'],
  password: ENV['GMAIL_APP_PASSWORD'],
  authentication: :login,
  enable_starttls_auto: true
}

# config.action_mailer.smtp_settings = {
#   address: "smtp.gmail.com",
#   port: 587,
#   domain: "example.com",
#   user_name: ENV["GMAIL_USERNAME"],
#   password: ENV["GMAIL_APP_PASSWORD"],
#   authentication: :plain,
#   enable_starttls_auto: true
# }
