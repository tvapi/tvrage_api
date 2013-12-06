require 'spec_helper'

describe TvrageApi::Request::Show do
  let(:klass) { TvrageApi::Request::Show }

  describe 'real request' do
    describe '#find' do
      it 'should return show class' do
        klass.find('2930').result.class.should == TvrageApi::Show
      end
    end

    describe '#find_full' do
      it 'should return show class' do
        klass.find_full('2930').result.class.should == TvrageApi::Show
      end
    end

    describe '#episodes' do
      it 'should return show class' do
        klass.episodes('2930').result.class.should == TvrageApi::Show
      end
    end
  end
end
