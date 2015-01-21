require 'hashie'

class TvrageApi::AttributesMapping::Show::Episode < Hashie::Trash
  property :sid, from: :show_id
  property :ep, from: :episode
end
