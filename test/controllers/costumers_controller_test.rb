# frozen_string_literal: true

require 'test_helper'

class CostumersControllerTest < ActionDispatch::IntegrationTest
  test 'should get index' do
    get costumers_index_url
    assert_response :success
  end

  test 'should get show' do
    get costumers_show_url
    assert_response :success
  end

  test 'should get new' do
    get costumers_new_url
    assert_response :success
  end

  test 'should get create' do
    get costumers_create_url
    assert_response :success
  end

  test 'should get edit' do
    get costumers_edit_url
    assert_response :success
  end

  test 'should get update' do
    get costumers_update_url
    assert_response :success
  end

  test 'should get destroy' do
    get costumers_destroy_url
    assert_response :success
  end
end
