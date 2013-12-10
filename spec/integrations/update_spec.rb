require 'spec_helper'

describe TvrageApi::Update do
  let(:model) { TvrageApi::Update.new }

  describe 'real request' do
    describe '.all' do
      it 'should return Hash class' do
        model.all.class.should == Hash
      end
    end
  end
end
