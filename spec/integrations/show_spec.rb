require 'spec_helper'

describe TvrageApi::Show do
  let(:model) { TvrageApi::Show.new }

  describe 'real request' do
    describe '.find' do
      it 'should return Hash class' do
        model.find('2930').class.should == Hash
      end
    end

    describe '.find_full' do
      it 'should return Hash class' do
        model.find_full('2930').class.should == Hash
      end
    end

    describe '.episodes' do
      it 'should return show class' do
        model.episodes('2930').class.should == Hash
      end
    end

    describe '.episode' do
      it 'should return show class' do
        model.episode('2930', '2',  '4').class.should == Hash
      end
    end
  end
end
