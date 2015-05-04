require('spec_helper')

describe (Task) do
  describe ('#==') do
    it("is the same task if it has the same description") do
      task1 = Task.new({:description => "Pass Code Review", :list_id => 1, :due_date => "2015-01-05"})
      task2 = Task.new({:description => "Pass Code Review", :list_id => 1, :due_date => "2015-01-05"})
      expect(task1).to(eq(task2))
    end
  end

  describe(".all") do
    it("is empty at first") do
      expect(Task.all()).to(eq([]))
    end
  end

  describe('#save') do
    it("adds a task to saved task array") do
      test_task = Task.new({:description => "Pass Code Review", :list_id => 1, :due_date => "2016-01-05"})
      test_task.save()
      expect(Task.all()).to(eq([test_task]))
      test_task2 = Task.new({:description => "Yep", :list_id => 2, :due_date => "2015-01-05"})
      test_task2.save()
      expect(Task.all()).to(eq([test_task2, test_task]))
      end
  end

  describe("#description") do
    it("lets you read the description out") do
      test_task = Task.new({:description => "learn SQL", :list_id => 1, :due_date => "2015-01-05"})
      expect(test_task.description()).to(eq("learn SQL"))
    end
  end

  describe("#list_id") do
    it("lets you read the list ID out") do
      test_task = Task.new({:description => "learn SQL", :list_id => 1, :due_date => "2015-01-05"})
      expect(test_task.list_id()).to(eq(1))
    end
  end

  describe("#due_date") do
    it("lets you read the due date") do
      test_task = Task.new({:description => "learn SQL", :list_id => 1, :due_date => "2015-01-05"})
      expect(test_task.due_date()).to(eq("2015-01-05"))
    end
  end
end
