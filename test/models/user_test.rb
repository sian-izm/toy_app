# frozen_string_literal: true

require 'test_helper'

class UserTest < ActiveSupport::TestCase
  test 'should validate' do
    assert_equal true, User.new(email: 'sian.izm@gmail.com', name: 'sian-izm').valid?
    assert_equal false, User.new(email: '', name: '').valid?
    assert_equal false, User.new(email: 'sian.izm', name: 'sian-izm').valid?
  end
end
