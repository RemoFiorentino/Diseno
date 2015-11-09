 require 'test_helper'

class TaskTest < ActiveSupport::TestCase
   test "a task requires content" do
     task = Task.new
     assert !task.save, "The task was saved without a content"
   
    #  puts "--Errors--"
    #  task.errors.full_messages.each {|msg| puts msg}
   end
   test "that a task's title is at least 6 letters" do
     task = Task.new
     task.title = "short"
     assert !task.save, "The task's title was saved with less 6 characters"
    end
    test "that a task's description is at least 6 letters" do
     task = Task.new
     task.description = "short"
     assert !task.save, "The task's description was saved with less 6 characters"
    end 
    test "that a task has a user id" do
        task = Task.new
        task.title = "Hello world"
        task.description = "Hello world"
        assert !task.save, "The task's was saved without user id"
    end
end
