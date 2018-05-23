class Item < ApplicationRecord
  # model association
  belongs_to :todo

  # validation
  validates_presence_of :name

  FactoryBot.define do
  factory :item do
    name { Faker::StarWars.character }
    done false
    todo_id nil
  end
end
end