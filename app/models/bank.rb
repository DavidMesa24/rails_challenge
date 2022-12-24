class Bank < ApplicationRecord
  has_many :suppliers
  validates_presence_of :name, message: 'Name should be present'
  validates_length_of :name, :minimum => 1
  validates_uniqueness_of :name, message: 'Name should be unique'
  validates_length_of :name, :maximum => 50
end