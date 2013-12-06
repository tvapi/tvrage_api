require 'spec_helper'

describe TvrageApi::Request::Update do
  let(:klass) { TvrageApi::Request::Update }

  describe 'real request' do
    describe '#find' do
      it 'should return show class' do
        puts klass.all.result.inspect
        # klass.all.result.class.should == Array
      end
    end
  end
end
