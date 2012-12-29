module ICReader
  class RedisNotifier

    def initialize redis, key
      @redis = redis
      @key = key
    end

    def notify
      @redis.set @key, message
    end
  end
end
