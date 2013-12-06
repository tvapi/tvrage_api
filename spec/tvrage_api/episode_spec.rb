require 'spec_helper'

describe TvrageApi::Episode do
  let(:klass) { TvrageApi::Episode }

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
    describe 'epnum attribute' do
      include_examples 'mapping', :epnum, :episode_number
    end
    
    describe 'seasonnum attribute' do
      include_examples 'mapping', :seasonnum, :season_number
    end
    
    describe 'prodnum attribute' do
      include_examples 'mapping', :prodnum, :production_number
    end
  end

  describe 'ceorce' do
    describe 'airdate attribute' do
      include_examples 'date mapping', :airdate
    end

    describe 'episode_number attribute' do
      include_examples 'integer mapping', :episode_number
    end

    describe 'season_number attribute' do
      include_examples 'integer mapping', :season_number
    end
  end
end
