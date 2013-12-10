require 'spec_helper'

describe TvrageApi::Search do
  let(:klass) { TvrageApi::Search }
  let(:model) { klass.new }

  describe '#find' do
    it 'should call new with specific params' do
      model.should_receive(:get).with('search.php', show: 'buffy').and_return(double(response: true))

      model.by_name('buffy')
    end
  end

  describe '#find_full' do
    it 'should call new with specific params' do
      model.should_receive(:get).with('full_search.php', show: 'buffy').and_return(double(response: true))

      model.full_by_name('buffy')
    end
  end
end