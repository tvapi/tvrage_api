require 'service_api'

class TvrageApi::Base
  include ServiceApi::BaseFaraday

  private

  def base_url
    'http://services.tvrage.com/feeds/'
  end
end
