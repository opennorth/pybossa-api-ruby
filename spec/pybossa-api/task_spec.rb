require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe PyBossa::Task do
  describe '#list' do
    it 'should return a list of tasks' do
      response = PyBossa::Task.list
      response.each{|x| expect(x).to have_key('state')}
    end
  end

  describe '#get' do
    it 'should get an task' do
      response = PyBossa::Task.get PyBossa::Task.list.first['id']
      expect(response).to have_key('state')
    end
  end

  describe '#create' do
    pending "Must use API key to test this method"
  end

  describe '#update' do
    pending "Must use API key to test this method"
  end

  describe '#delete' do
    pending "Must use API key to test this method"
  end
end
