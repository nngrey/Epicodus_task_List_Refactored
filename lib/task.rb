
class Task
  def initialize(description)
  @description = description
  end
  def description
    @description
  end
end


t = Task.new("mop")
puts t.description


