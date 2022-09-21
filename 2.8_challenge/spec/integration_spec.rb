require_relative '../lib/todo_list'
require_relative '../lib/todo'

describe 'integration' do
  context 'when given tasks' do
    it 'adds them to the list' do
      todolist = TodoList.new
      task1 = Todo.new('task one')
      task2 = Todo.new('task two')
      todolist.add(task1)
      todolist.add(task2)
      expect(todolist.incomplete).to eq ['task one', 'task two']
    end
  end
  context 'when tasks are complete' do
    it 'should be able to tell' do
      todolist = TodoList.new
      task1 = Todo.new('task one')
      task2 = Todo.new('task two')
      todolist.add(task1)
      todolist.add(task2)
      task2.mark_done!
      expect(todolist.incomplete).to eq ['task one']
    end
  end
  context 'when i give up' do
    it 'should leave all tasks marked as complete' do
      todolist = TodoList.new
      task1 = Todo.new('task one')
      task2 = Todo.new('task two')
      todolist.add(task1)
      todolist.add(task2)
      todolist.give_up!
      expect(todolist.complete).to eq ['task one', 'task two']
    end
  end
end