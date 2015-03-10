class User < ActiveRecord::Base
  include Clearance::User
  has_one :location
  has_many :purposes
  has_many :backgrounds

end
