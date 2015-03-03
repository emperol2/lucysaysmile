class User < ActiveRecord::Base

  validates :contact_number, presence: true

end
