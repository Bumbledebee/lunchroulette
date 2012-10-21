class Player < ActiveRecord::Base
  validates_presence_of :email, :name
  validates :email, :uniqueness => { :message => "Someone already signed up with that email" }
  validates :name, :uniqueness => { :case_sensitive => false,
    :message => "Someone already signed up with that name - please distinguish yourself!" }
  attr_accessible :email, :name, :department, :leader, :participating

  DEPARTMENTS = ['Customer Support', 'IT and Product', 'HR and Administrative', 'Billing and Accounting', 'Advertiser', 'Publisher', 'Marketing and Design']
  
  LEADER = ['Sure, no prob', 'Only if not enough','Not this time']

  PARTICIPATING = ['Yes', 'No']
    
end



