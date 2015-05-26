require 'test_helper'

class CommentTest < ActiveSupport::TestCase

  test 'should contain text' do
    assert_no_difference 'Comment.count' do
      Comment.new(:text => "").save()
    end
  end
end
