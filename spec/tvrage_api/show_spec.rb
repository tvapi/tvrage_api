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

  describe 'key mapping' do
    describe 'showid attribute' do
      include_examples 'mapping', :showid, :show_id
    end
  end

  describe 'ceorce' do
    describe 'ended attribute' do
      include_examples 'integer mapping', :ended
    end

    describe 'seasons attribute' do
      include_examples 'integer mapping', :seasons
    end

    describe 'show_id attribute' do
      include_examples 'integer mapping', :show_id
    end

    describe 'started_id attribute' do
      include_examples 'integer mapping', :started
    end
  end
end
