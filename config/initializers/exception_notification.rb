Rails.application.config.middleware.use ExceptionNotification::Rack,
  :email => {
    # :deliver_with => :deliver, # Rails >= 4.2.1 do not need this option since it defaults to :deliver_now
    :email_prefix => "[Error] ",
    :sender_address => %{"notifier" <notifier@example.com>},
    :exception_recipients => %w{test@test.ru}
  }

