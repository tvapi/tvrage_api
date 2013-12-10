require 'spec_helper'

describe TvrageApi::Client do
  let(:client) { TvrageApi::Client.new }

  describe 'real request' do
    describe '.search' do
      describe '.by_name' do
        it 'should return Hash class' do
          client.search.by_name('buffy').class.should == Hash
        end
      end

      describe '.full_by_name' do
        it 'should return show class' do
          client.search.full_by_name('buffy').class.should == Hash
        end
      end
    end

    describe '.show' do
      describe '.find' do
        it 'should return Hash class' do
          client.show.find('2930').class.should == Hash
        end
      end

      describe '.find_full' do
        it 'should return Hash class' do
          client.show.find_full('2930').class.should == Hash
        end
      end

      describe '.episodes' do
        it 'should return show class' do
          client.show.episodes('2930').class.should == Hash
        end
      end

      describe '.episode' do
        it 'should return show class' do
          client.show.episode('2930', '2',  '4').class.should == Hash
        end
      end
    end

    describe '.update' do
      describe '.all' do
        it 'should return Hash class' do
          client.update.all.class.should == Hash
        end
      end
    end
  end
end
