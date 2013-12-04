require 'spec_helper'

describe AkaArray do
  describe '#coerce' do
    describe 'when value is Array' do
      it 'should return Array' do
        AkaArray.coerce([]).should == []
      end
    end

    describe 'when value is not Array' do
      it 'should return Array' do
        AkaArray.coerce(double(aka: [double(country: 'EN', __content__: 'test')])).first.class.should == TvrageApi::Element
      end
    end
  end
end
