require 'spec_helper'

describe TvrageApi::Show do
  let(:klass) { TvrageApi::Show }

  shared_examples 'mapping' do |field, field_mapped|
    it "should save as #{field_mapped}" do
      klass.new(field => '123').send(field_mapped).should_not == nil
    end
  end

  shared_examples 'integer mapping' do |field|
    it 'should save as Integer' do
      klass.new(field => '123').send(field).should == 123
    end
  end

  shared_examples 'date mapping' do |field|
    it 'should save as Date' do
      klass.new(field => '2000-01-01').send(field).should == Date.new(2000, 1, 1)
    end
  end

  describe 'key mapping' do
    describe 'showid attribute' do
      include_examples 'mapping', :showid, :show_id
    end
  end

  describe 'key mapping' do
    describe 'Episodelist attribute' do
      TvrageApi::Show.new(Episodelist: []).send(:episode_list).should_not == nil
    end
    
    describe 'showid attribute' do
      include_examples 'mapping', :showid, :show_id
    end
    
    describe 'totalseasons attribute' do
      include_examples 'mapping', :totalseasons, :total_seasons
    end
  end

  describe 'ceorce' do
    describe 'runtime attribute' do
      include_examples 'integer mapping', :runtime
    end

    describe 'seasons attribute' do
      include_examples 'integer mapping', :seasons
    end

    describe 'show_id attribute' do
      include_examples 'integer mapping', :show_id
    end

    describe 'startdate attribute' do
      include_examples 'date mapping', :startdate
    end

    describe 'started attribute' do
      include_examples 'integer mapping', :started
    end

    describe 'total_seasons attribute' do
      include_examples 'integer mapping', :total_seasons
    end
  end
end
