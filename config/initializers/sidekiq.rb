# From docker-compose.yml
REDIS_URL = 'redis://redis'
REDIS_CONFIG = { url: REDIS_URL }

Sidekiq.configure_server do |config|
  config.redis = REDIS_CONFIG
end

Sidekiq.configure_client do |config|
  config.redis = REDIS_CONFIG
end
