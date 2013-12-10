require 'spec_helper'

describe TvrageApi::Update do
  let(:klass) { TvrageApi::Update }

  describe 'real request' do
    describe '.all' do
      it 'should return Hash class' do
        klass.new.all.class.should == Hash
      end
    end
  end
end
