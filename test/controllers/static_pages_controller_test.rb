require 'test_helper'

class StaticPagesControllerTest < ActionController::TestCase
  def setup
    @base_title = 'Ruby on Rails Tutorial Sample App'
  end

  test 'should get home' do
    get :home
    assert_response :success
  end

  test 'should get correct home title' do
    get :home
    assert_select 'title', "#{@base_title}"
  end

  test 'should get help' do
    get :help
    assert_response :success
  end

  test 'should get correct help title' do
    get :help
    assert_select 'title', "Help | #{@base_title}"
  end

  test 'should get about' do
    get :about
    assert_response :success
  end

  test 'should get correct about title' do
    get :about
    assert_select 'title', "About | #{@base_title}"
  end

  test 'should get contact' do
    get :contact
    assert_response :success
  end

  test 'should get correct contact title' do
    get :contact
    assert_select 'title', "Contact | #{@base_title}"
  end
end
