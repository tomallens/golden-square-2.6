require_relative '../lib/todo'

describe Todo do
  it 'initializes' do
    todo = Todo.new('do thing number 1')
    expect(todo.task).to eq 'do thing number 1'
  end

  describe 'marking something done behaviour' do
    context 'when task incomplete' do
      it 'returns false' do
        todo = Todo.new('do a new task')
        expect(todo.done?).to eq false
      end
    end

    context 'when task complete' do
      it 'returns true' do
        todo = Todo.new('do another task')
        todo.mark_done!
        expect(todo.done?).to eq true
      end
    end
  end
end
