require 'spec_helper'

describe DateOrInteger do
  describe '#coerce' do
    it 'should convert string to date' do
      DateOrInteger.coerce('2001/02/03').should == Date.new(2001, 2, 3)
    end

    it 'should return integer for no date string' do
      DateOrInteger.coerce('2000').should == 2000
    end
  end
end
