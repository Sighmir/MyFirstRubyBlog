require 'test_helper'

class EntryTest < ActiveSupport::TestCase
  test 'has valid attributes' do
    entry = Entry.new(meal_type: 'Breakfast', carbohydrates: 30, proteins: 20, fats: 10, calories: 400, category_id: 1)
    assert entry.save
  end

  test 'is missing meal_type' do
    entry = Entry.new(carbohydrates: 30, proteins: 20, fats: 10, calories: 400, category_id: 1)
    assert_not entry.save
  end

  test 'is missing carbohydrates' do
    entry = Entry.new(meal_type: 'Breakfast', proteins: 20, fats: 10, calories: 400, category_id: 1)
    assert_not entry.save
  end

  test 'is missing proteins' do
    entry = Entry.new(meal_type: 'Breakfast', carbohydrates: 30, fats: 10, calories: 400, category_id: 1)
    assert_not entry.save
  end

  test 'is missing fats' do
    entry = Entry.new(meal_type: 'Breakfast', carbohydrates: 30, proteins: 20, calories: 400, category_id: 1)
    assert_not entry.save
  end

  test 'is missing calories' do
    entry = Entry.new(meal_type: 'Breakfast', carbohydrates: 30, proteins: 20, fats: 10, category_id: 1)
    assert_not entry.save
  end

  test 'is missing category' do
    entry = Entry.new(meal_type: 'Breakfast', carbohydrates: 30, proteins: 20, fats: 10, calories: 400)
    assert_not entry.save
  end
end
