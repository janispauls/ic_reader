module ICReader
  class RedisPubSubNotifier < RedisNotifier

    def notify message
      @redis.publish @key, message
    end
  end
end
