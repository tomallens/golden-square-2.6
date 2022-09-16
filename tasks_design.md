Single-Class Programs Design Recipe
1. Describe the Problem

As a user
So that I can keep track of my tasks
I want a program that I can add todo tasks to and see a list of them.

As a user
So that I can focus on tasks to complete
I want to mark tasks as complete and have them disappear from the list.

2. Design the Class Interface
The interface of a class includes:
```ruby
Class TaskManager

  def initialize
think the list goes here
  end

  def todo(text)
    adds tasks to list
    returns nothing
  end

  def view
    returns list
  end 

  def remove(text)
    removes tasks from list
    returns nothing
  end
end
```

3. Create Examples as Tests
```ruby
1  task_manager = TaskManager.new
   task_manager.view # => []

3  task_manager = TaskManager.new
   task_manager.todo('task the first')
   task_manager.view # => ['task the first']

2  task_manager = TaskManager.new
   task_manager.todo('')
   task_manager.view # => []

4  task_manager = TaskManager.new
   task_manager.todo('task the first')
   task_manager.todo('task the second')
   task_manager.view # => ['task the first', 'task the second']

5  task_manager = TaskManager.new
   task_manager.todo('task the first')
   task_manager.todo('task the second')
   task_manager.remove('task the first')
   task_manager.view # => ['task the second']
 
```
These are examples of the class being used with different initializer arguments, method calls, and how it should behave.

For complex challenges you might want to come up with a list of examples first and then test-drive them one by one. For simpler ones you might just dive straight into writing a test for the first example you want to address.

4. Implement the Behaviour
For each example you create as a test, implement the behaviour that allows the class to behave according to your example.

At this point you may wish to apply small-step test-driving to manage the complexity. This means you only write the minimum lines of the example to get the test to fail (red), then make it pass (green) and refactor, before adding another line to the test until it fails, then continue.

Then return to step 3 until you have addressed the problem you were given. You may also need to revise your design, for example if you realise you made a mistake earlier.