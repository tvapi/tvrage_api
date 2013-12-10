require 'spec_helper'

describe TvrageApi::Show do
  let(:klass) { TvrageApi::Show }
  let(:model) { klass.new }

  describe '#find' do
    it 'should call new with specific params' do
      model.should_receive(:get).with('showinfo.php', sid: 123).and_return(double(response: true))

      model.find(123)
    end
  end

  describe '#find_full' do
    it 'should call new with specific params' do
      model.should_receive(:get).with('full_show_info.php', sid: 123).and_return(double(response: true))

      model.find_full(123)
    end
  end

  describe '#episodes' do
    it 'should call new with specific params' do
      model.should_receive(:get).with('episode_list.php', sid: 123).and_return(double(response: true))

      model.episodes(123)
    end
  end

  describe '#episode' do
    it 'should call new with specific params' do
      model.should_receive(:get).with('episodeinfo.php', sid: 123, ep: '1x2').and_return(double(response: true))

      model.episode(123, 1, 2)
    end
  end
end
