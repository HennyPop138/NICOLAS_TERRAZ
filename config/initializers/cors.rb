Rails.application.config.middleware.insert_before 0, Rack::Cors do
  allow do
    origins 'http://www.terraz-plomberie.fr', 'https://www.terraz-plomberie.fr'
    resource '*', headers: :any, methods: [:get, :post, :options]
  end
end
