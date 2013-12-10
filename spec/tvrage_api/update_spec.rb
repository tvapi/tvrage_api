require 'spec_helper'

describe TvrageApi::Update do
  let(:klass) { TvrageApi::Update }
  let(:model) { klass.new }

  describe '#all' do
    it 'should call new with specific params' do
      model.should_receive(:get).with('show_list.php').and_return(double(response: true))

      model.all
    end
  end
end
