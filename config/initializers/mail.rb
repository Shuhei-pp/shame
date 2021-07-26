Rails.application.configure do
    config.action_mailer.default_url_options = { host: 'localhost', port: 3000}
    config.action_mailer.raise_delivery_errors = false
    config.action_mailer.delivery_method = :letter_opener_web
    config.action_mailer.smtp_settings = { 
        address: 'smtp.gmail.com',
        port: 587,
        domain: 'gmail.com',
        user_name: Rails.application.credentials.devise_email,
        password: Rails.application.credentials.devise_password,
        authentication: 'plain',
        enable_starttls_auto: true
    }
end