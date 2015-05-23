module TheRack::Request1

  def call
    @request += '请求1-'
    super
  end

end

module TheRack::Request2

  def call
    @request += '请求2-'
    super
  end

end

module TheRack::Request3

  def call
    @request += '请求3-'
    super
  end

end