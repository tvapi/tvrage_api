require 'hashie'

class TvrageApi::Base < Hashie::Mash
  include Hashie::Extensions::MethodAccess
  include Hashie::Extensions::KeyReplace
  include Hashie::Extensions::Coercion
end
