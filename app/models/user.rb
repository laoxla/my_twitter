class User < ActiveRecord::Base

  has_secure_password
   has_many :tweets
   acts_as_followable
   acts_as_follower

  def full_name
    [last_name, first_name].join(", ")
  end


end
