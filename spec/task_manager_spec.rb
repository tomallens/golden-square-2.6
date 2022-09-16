require_relative '../lib/task_manager'

describe TaskManager do
  it 'returns list empty on build' do
    task_manager = TaskManager.new
    expect(task_manager.view).to eq []
  end

  describe '#todo' do
    context 'given a string' do
      it 'adds it to the list' do
        task_manager = TaskManager.new
        task_manager.todo('task the first')
        expect(task_manager.view).to eq ['task the first']
      end
    end

    context 'given a sequence of multiple strings' do
      it 'adds them to the list' do
        task_manager = TaskManager.new
        task_manager.todo('task the first')
        task_manager.todo('task the second')
        expect(task_manager.view).to eq ['task the first', 'task the second']
      end
    end
  end

  describe '#remove'
    context 'given a task on the list' do
      it 'removes it from the list' do
        task_manager = TaskManager.new
        task_manager.todo('task the first')
        task_manager.todo('task the second')
        task_manager.remove('task the first')
        expect(task_manager.view).to eq ['task the second']
      end
    end

    context 'given a nonexistant task' do
      it 'fails with an error' do
        task_manager = TaskManager.new
        task_manager.todo('task the first')
        task_manager.todo('task the second')
        expect { task_manager.remove('task the third')}.to raise_error "no such task"
      end
    end
  end