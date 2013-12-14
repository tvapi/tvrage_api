require 'spec_helper'

describe TvrageApi::Update do
  let(:model) { TvrageApi::Update.new }

  describe 'real request' do
    describe '.all' do
      it 'should return response class' do
        model.all.class.should == HTTParty::Response
      end
    end
  end
end
