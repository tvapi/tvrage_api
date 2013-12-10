require 'spec_helper'

describe TvrageApi::Client do
  let(:klass) { TvrageApi::Client }

  describe '.search' do
    it 'should return search class' do
      klass.new.search.class.should == TvrageApi::Search
    end
  end

  describe '.show' do
    it 'should return show class' do
      klass.new.show.class.should == TvrageApi::Show
    end
  end

  describe '.update' do
    it 'should return update class' do
      klass.new.update.class.should == TvrageApi::Update
    end
  end
end
