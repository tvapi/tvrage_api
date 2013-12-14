require 'spec_helper'

describe TvrageApi::Client do
  let(:model) { TvrageApi::Client.new }

  describe '.search' do
    it 'should return search class' do
      model.search.class.should == TvrageApi::Search
    end
  end

  describe '.show' do
    it 'should return show class' do
      model.show.class.should == TvrageApi::Show
    end
  end

  describe '.update' do
    it 'should return update class' do
      model.update.class.should == TvrageApi::Update
    end
  end
end
