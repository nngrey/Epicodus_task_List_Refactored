# require 'task'

class List
  def initialize(list_title)
    @list_title = list_title
    @task_list = []
  end

  def add_task(task)
    current_task = Task.new(task)
    @task_list.push(current_task)
    @task_list
  end
  def show_task_list
    @task_list
  end
  def remove_task(num)
    @task_list.delete_at(num-1)
    @task_list
  end
  def show_title
    @list_title
  end
end



