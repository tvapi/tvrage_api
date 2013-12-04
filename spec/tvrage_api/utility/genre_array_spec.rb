require 'spec_helper'

describe GenreArray do
  describe '#coerce' do
    describe 'when value is Array' do
      it 'should return Array' do
        GenreArray.coerce([]).should == []
      end
    end

    describe 'when value is not Array' do
      it 'should return Array' do
        GenreArray.coerce(double(genre: 'Action')).should == 'Action'
      end
    end
  end
end
