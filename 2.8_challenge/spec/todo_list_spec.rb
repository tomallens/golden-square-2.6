require_relative '../lib/todo_list'

describe TodoList do
  context 'initially' do
    it 'creates empty list' do
      todolist = TodoList.new
      expect(todolist.incomplete).to eq []
    end
  end
end