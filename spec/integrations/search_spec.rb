require 'spec_helper'

describe TvrageApi::Search do
  let(:klass) { TvrageApi::Search }

  describe 'real request' do
    describe '#by_name' do
      it 'should return Hash class' do
        klass.new.by_name('buffy').class.should == Hash
      end
    end

    describe '#full_by_name' do
      it 'should return show class' do
        klass.new.full_by_name('buffy').class.should == Hash
      end
    end
  end
end
