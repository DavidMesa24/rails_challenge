class Supplier < ApplicationRecord
  has_one :bank
  validates_presence_of :name, message: 'Name should be present'
  validates_length_of :name, :minimum => 1
  validates_presence_of :nit, message: 'Nit should be present'
  validates_uniqueness_of :nit, message: 'NIT should be unique'
  validates_length_of :contact_cel, :maximum => 10
  validates_length_of :account_number, :maximum => 15
  validates_uniqueness_of :account_number, message: 'Account number should be unique'
  validates_uniqueness_of :name, message: 'Name should be unique'
  validates_format_of :nit, :with => /(^[0-9]+-{1}[0-9]{1})/ , message: 'NIT should be in the format 123456789-0'
end