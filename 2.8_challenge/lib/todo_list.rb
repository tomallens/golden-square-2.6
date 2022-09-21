class TodoList
  def initialize
  @task_list = []
  end

  def add(todo) # todo is an instance of Todo
    # Returns nothing
    @task_list << todo
  end

  def incomplete
    # Returns all non-done todos
    @task_list.select { |task| !task.done?}.map{ |task| task.task}
  end

  def complete
    # Returns all complete todos
    @task_list.select { |task| task.done?}.map{ |task| task.task}
  end

  def give_up!
    #marks all tasks as done
    @task_list.each { |task| task.mark_done!}
  end
end