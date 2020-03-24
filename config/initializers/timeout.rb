# Rack::Timeout.timeout = 10  # seconds
Rails.application.config.middleware.insert_before Rack::Runtime, Rack::Timeout, service_timeout: 10
