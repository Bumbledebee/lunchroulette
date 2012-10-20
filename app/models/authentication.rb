class Authentication < ActiveRecord::Base
  attr_accessible :email, :provider, :uid

  def self.find_or_create (data)
  	uid = data[:uid]
  	provider = data[:provider]
  	#select * from authentications where uid = ? and provider = ?
  	auth = where(:uid => uid, :provider => provider).first
  	unless auth
  	  auth = create!(:uid => uid, :provider => provider)
  	end
  	auth
  end
end
