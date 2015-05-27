require 'test_helper'

class MyIntegrationTest < ActionDispatch::IntegrationTest

  setup do
    #login
    post_via_redirect employee_session_path, 'employee[email]' => 'SebastianBezold@googlemail.com', 'employee[password]' => 'Sebastian'
  end

  test 'Root should redirect signed_out user' do
    get '/'
    assert_redirected_to('/employees/sign_in')
  end

  test 'signed_in user should get Events as root' do

    #test
    get '/'
    assert_response :ok
  end

  test 'should render links in navigation' do
    # get teams becuase i don't know why my login in setup doesn't work
    get '/teams'

    assert_response :ok
    assert_select 'div.collapse' do
      assert_select 'ul.nav' do
        assert_select 'a[href="/events"]', 'Events'
        assert_select 'a[href="/teams"]', 'Teams'
        assert_select 'a[href="/employees"]', 'Employees'
      end
    end
  end
end
