require 'spec_helper'

describe TvrageApi::Client do
  let(:klass) { TvrageApi::Client }

  describe '.search' do
    it 'should return search class' do
      klass.new.search == TvrageApi::Search
    end
  end

  describe '.show' do
    it 'should return show class' do
      klass.new.search == TvrageApi::Show
    end
  end

  describe '.update' do
    it 'should return updatesearch class' do
      klass.new.search == TvrageApi::Update
    end
  end
end
