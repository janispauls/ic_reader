module ICReader
  class RedisPubSubNotifier

    def initialize redis, channel
      @redis = redis
      @channel = channel
    end

    def notify message
      @redis.publish @channel, message
    end
  end
end
