module NewRack::Request1

  def self.call(request)
    request + '请求1-'
  end

end

module NewRack::Request2

  def self.call(request)
    request + '请求2-'
  end

end

module NewRack::Request3

  def self.call(request)
    request + '请求3-'
  end

end