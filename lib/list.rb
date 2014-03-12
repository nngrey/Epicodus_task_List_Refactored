# require 'task'

class List

  @@list_of_lists = []

  def List.all
    @@list_of_lists
  end

  def List.create(list_title)
    new_list = List.new(list_title)
    @@list_of_lists << new_list
    new_list
  end

  def initialize(list_title)
    @list_title = list_title
    @task_list = []
  end

  def List.clear
    @@list_of_lists = []
  end

  def add_task(task)
    current_task = Task.create(task)
    @task_list.push(current_task)
    # @task_list
    #Task.all
  end

  def show_task_list
    @task_list
  end

  def remove_a_task(num)
    Task.all.delete_at(num-1)
    Task.all
  end

  def show_title
    @list_title
  end
end

