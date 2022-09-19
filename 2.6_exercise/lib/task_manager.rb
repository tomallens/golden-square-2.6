class TaskManager

  def initialize
  @task_list = []
  end

  def todo(text)
    @task_list << text
  end

  def view
    return @task_list
  end

  def remove(text)
    fail "no such task" unless @task_list.include?(text)
    @task_list.delete(text)
  end
end