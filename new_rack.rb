module NewRack; end
require_relative 'new_rack/request'
require_relative 'new_rack/response'

module NewRack

  @request_middlewares = [
    NewRack::Request1,
    NewRack::Request2,
    NewRack::Request3
  ]
  @response_middlewares = [
    NewRack::Response1,
    NewRack::Response2,
    NewRack::Response3
  ]
  @endpoint_app = RailsApp

  def self.process_request(request = '')
    @request_middlewares.each do |m|
      request = m.call(request)
    end
    request
  end

  def self.run(request)
    @endpoint_app.call(request)
  end

  def self.process_response(response)
    @response_middlewares.each do |m|
      response = m.call(response)
    end

    puts response
  end

  def self.call(request = '')
    request_done = process_request(request)
    response = run(request_done)
    process_response(response)
  end

end