require 'rspec'
require 'task'

describe Task do
  it 'should create a task' do
    test_task = Task.new('description')
    test_task.should be_instance_of Task
  end
end
