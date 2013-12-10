require 'httparty'

class TvrageApi::Base
  include HTTParty

  attr_reader :uri, :options

  def get(uri, options = {})
    @uri = uri
    @options = options

    self
  end

  def response
    response = self.class.get(uri, request_options(options))
    response.code == 200 ? response.parsed_response : nil
  end

  def request_options(options = {})
    {
      query: options,
      base_uri: 'http://services.tvrage.com/feeds/'
    }
  end
end