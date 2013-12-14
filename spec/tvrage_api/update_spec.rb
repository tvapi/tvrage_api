require 'spec_helper'

describe TvrageApi::Update do
  let(:klass) { TvrageApi::Update }
  let(:model) { klass.new }

  describe '#all' do
    it 'should call new with specific params' do
      klass.should_receive(:get).with('show_list.php')

      model.all
    end
  end
end
