module NewRack::RailsApp

  def self.call(request)
    request + '开始响应-'
  end

end

module NewRack::Response1

  def self.call(response)
    response + '响应1-'
  end

end

module NewRack::Response2

  def self.call(response)
    response + '响应2-'
  end

end

module NewRack::Response3

  def self.call(response)
    response + '响应3'
  end

end