class Employee < ActiveRecord::Base
  belongs_to :article
  #has_secure_password


  validates :password , length: {in: 6..20}

end
