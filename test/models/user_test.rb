require 'test_helper'

class UserTest < ActiveSupport::TestCase
  test "a user requires content" do
    user = User.new
    assert !user.save, "The user was saved without a content"
  
    #  puts "--Errors--"
    #  user.errors.full_messages.each {|msg| puts msg}
  end
end
