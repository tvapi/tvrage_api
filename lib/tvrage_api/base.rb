require 'service_api'

class TvrageApi::Base
  include ServiceApi::BaseFaraday

  # TODO: support optional parameters
  def normalize_quick_info_options(*options)
    normalize_options({ show: :show, episode: :ep, exact: :exact }, *options)
  end

  def normalize_recaps_options(*options)
    normalize_options({ id: :show }, *options)
  end

  def normalize_last_recaps_options(*options)
    normalize_options([:days], *options)
  end

  def normalize_schedule_options(*options)
    normalize_options([:country], *options)
  end

  def normalize_full_schedule_options(*options)
    normalize_options([:country, '24_formats'.to_sym], *options)
  end

  def normalize_search_options(*options)
    normalize_options({ name: :show }, *options)
  end

  def normalize_show_options(*options)
    normalize_options({ id: :sid }, *options)
  end

  def normalize_show_with_episode_options(*options)
    normalize_options({ show_id: :sid, episode: :ep }, *options)
  end

  def normalize_update_options(*options)
    normalize_options([:hours, :sort, :since], *options)
  end

  private

  def base_url
    'http://services.tvrage.com/'
  end
end
