module TheRack::RailsApp

  def call
    @response = @request + '开始响应-'
    super
  end

end

module TheRack::Response1

  def call
    @response += '响应1-'
    super
  end

end

module TheRack::Response2

  def call
    @response += '响应2-'
    super
  end

end

module TheRack::LastResponse

  def call
    @response += '响应last'
  end

end