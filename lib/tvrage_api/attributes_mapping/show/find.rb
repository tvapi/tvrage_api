require 'hashie'

class TvrageApi::AttributesMapping::Show::Find < Hashie::Trash
  property :sid, from: :id
end
