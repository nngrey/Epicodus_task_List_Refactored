require './lib/task'
require './lib/list'

@list_of_lists = []

def main_menu
  puts "Choose 'a' to add a new list "
  puts "Choose 'b' to add a task to a list"
  puts "Choose 'c' to look at a to-do list"
  puts "Chose 'd' to remove a completed task from a to-do list"
  main_choice = gets.chomp
    if main_choice == 'a'
    new_list
    elsif main_choice == 'b'
      add_task_to_list
    elsif main_choice == 'c'
      show_task
    elsif main_choice == 'd'
      remove_task
    end
end

def new_list
   puts "Enter the title of your list"
      current_title = gets.chomp
      @list_of_lists.push(List.new(current_title))
      puts "The" + " " + "#{current_title}" + " list was created"
      main_menu
end

def add_task_to_list
  if @list_of_lists.length == 0
    puts "please create a list to enter your task"
    new_list
  else
    puts "please enter the number of the list that you want to add your task to"
    puts list_the_lists
    end
    current_list_index = (gets.chomp.to_i) -1
    current_list = @list_of_lists[current_list_index]
    puts "enter your new task to #{current_list.show_title} list"
    current_task = gets.chomp
    current_list.add_task(current_task)
    main_menu
end

def list_the_lists
  list_titles = []
  @list_of_lists.each_with_index do |list, index|
    list_titles.push("#{index+1}" + ". " + list.show_title)
  end
  list_titles
end

def show_task
  @list_of_lists.each do |list|
    puts list.show_title
    list.show_task_list.each_with_index do |task, index|
    all_tasks = []
    all_tasks.push("#{index+1}" + ". " + task.description)
    puts all_tasks.join(",")
    end
  end
  main_menu
end

main_menu

