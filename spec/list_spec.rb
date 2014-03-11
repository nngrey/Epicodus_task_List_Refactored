require 'rspec'
require './lib/task'
require 'list'

describe List do
  # before do
  #   List.clear
  # end

  it 'should create a list' do
    test_list = List.new("House")
    test_list.should be_instance_of List
  end
  it 'should add tasks to the task array' do
    test_list = List.new("House")
    test_list.add_task('description')
    test_list.show_task_list.length.should eq(1)
  end

  it 'should remove one task' do
    test_list = List.new("House")
    test_list.add_task("sweep")
    test_list.add_task("mop")
    test_list.remove_task(1)
    test_list.show_task_list.length.should eq(1)
  end

  it 'should show title of list' do
    test_list = List.new("House")
    test_list.show_title.should eq("House")
  end
end

