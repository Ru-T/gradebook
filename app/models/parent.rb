class Parent < ActiveRecord::Base
  has_secure_password
  belongs_to :student
  has_many :grades, through: :students

end
