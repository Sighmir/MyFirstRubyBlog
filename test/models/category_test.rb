require "test_helper"

class CategoryTest < ActiveSupport::TestCase
  test 'has valid attributes' do
    entry = Category.new(title: 'Weight Loss')
    assert entry.save
  end

  test 'is missing title' do
    entry = Category.new()
    assert_not entry.save
  end
end
