require 'test_helper'

class InvitationTest < ActiveSupport::TestCase

  test 'should have initial status unknown' do
    assert Invitation.new.unknown?
  end
end
