class TheRack; end
require_relative 'the_rack/request'
require_relative 'the_rack/response'

class TheRack
  include TheRack::LastResponse
  include TheRack::Response2
  include TheRack::Response1
  include TheRack::RailsApp
  include TheRack::Request3
  include TheRack::Request2
  include TheRack::Request1

  def initialize
    @request = ''
  end

  def call
    super
    puts @response
  end

end