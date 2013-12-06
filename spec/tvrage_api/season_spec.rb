require 'spec_helper'

describe TvrageApi::Season do
  let(:klass) { TvrageApi::Season }

  shared_examples 'integer mapping' do |field|
    it 'should save as Integer' do
      klass.new(field => '123').send(field).should == 123
    end
  end

  describe 'ceorce' do
    describe 'no attribute' do
      include_examples 'integer mapping', :no
    end
  end
end
