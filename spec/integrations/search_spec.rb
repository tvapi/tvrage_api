require 'spec_helper'

describe TvrageApi::Search do
  let(:model) { TvrageApi::Search.new }

  describe 'real request' do
    describe '.by_name' do
      it 'should return response class' do
        model.by_name('buffy').class.should == HTTParty::Response
      end
    end

    describe '.full_by_name' do
      it 'should return response class' do
        model.full_by_name('buffy').class.should == HTTParty::Response
      end
    end
  end
end
