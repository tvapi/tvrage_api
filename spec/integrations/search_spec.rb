require 'spec_helper'

describe TvrageApi::Request::Search do
  let(:klass) { TvrageApi::Request::Search }

  describe 'real request' do
    describe '#find' do
      it 'should return show class' do
        klass.find('buffy').result.class.should == Array
      end
    end

    describe '#find_full' do
      it 'should return show class' do
        klass.find_full('buffy').result.class.should == Array
      end
    end
  end
end
