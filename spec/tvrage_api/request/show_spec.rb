require 'spec_helper'

describe TvrageApi::Request::Show do
  let(:klass) { TvrageApi::Request::Show }
  let(:kind) { :simple }
  let(:model) { klass.new('http://example.com', kind, sid: 123) }

  describe '#find' do
    it 'should call new with specific params' do
      klass.should_receive(:new).with('showinfo.php', :simple, sid: 123)

      klass.find(123)
    end
  end

  describe '#find_full' do
    it 'should call new with specific params' do
      klass.should_receive(:new).with('full_show_info.php', :full, sid: 123)

      klass.find_full(123)
    end
  end

  describe '#result' do
    describe 'when kind is simple' do
      let(:kind) { :simple }

      it 'should call collection_response method' do
        model.should_receive(:object_response).with('Showinfo', TvrageApi::Show)

        model.result
      end
    end

    describe 'when kind is full' do
      let(:kind) { :full }

      it 'should call collection_response method' do
        model.should_receive(:object_response).with('Show', TvrageApi::Show)

        model.result
      end
    end
  end
end
