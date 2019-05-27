# frozen_string_literal: true

require 'test_helper'

class MicropostTest < ActiveSupport::TestCase
  test 'should validate' do
    assert_equal true, Micropost.new(content: 'abc', user: users(:one)).valid?
    assert_equal false, Micropost.new(content: 'abc', user_id: 10_000).valid?
    assert_equal false, Micropost.new(content: Faker::Lorem.words(141), user: users(:one)).valid?
  end
end
