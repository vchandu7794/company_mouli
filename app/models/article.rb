class Article < ActiveRecord::Base

	has_many :employees
  validates :name, presence: true,
                    length: { minimum: 5 }

  validates :description, presence: true
  validates_format_of :email,:with => /\A[^@\s]+@([^@\s]+\.)+[^@\s]+\z/
  validates :password,  length: { in: 6..20 }
end


