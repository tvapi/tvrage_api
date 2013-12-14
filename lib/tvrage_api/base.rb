require 'httparty'

class TvrageApi::Base
  include HTTParty
  base_uri 'http://services.tvrage.com/feeds/'
end
