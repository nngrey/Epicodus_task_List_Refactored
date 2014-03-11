require 'rspec'
require 'task'

describe Task do
  before do
    Task.clear
  end

  describe '.create' do
    it 'makes a new instance of Task' do
      test_task = Task.create('wash the lion')
      test_task.should be_an_instance_of Task
    end

    it 'saves the Task' do
      test_task = Task.create('wash the lion')
      Task.all.should eq [test_task]
    end
  end

  describe '.all' do
    it 'is empty at first' do
      Task.all.should eq []
    end
  end

  describe '.clear' do
    it 'empties out all of the saved tasks' do
      Task.create('wash the lion')
      Task.clear
      Task.all.should eq []
    end
  end
end

  # it 'should create a task' do
  #   test_task = Task.new('description')
  #   test_task.should be_instance_of Task
  # end


  # describe '#save' do
  #   it 'adds a task to the array of saved tasks' do
  #     test_task = Task.new('wash the lion')
  #     test_task.save
  #     Task.all.should eq [test_task]
  #   end
  # end
