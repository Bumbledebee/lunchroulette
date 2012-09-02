class Player < ActiveRecord::Base
  validates_presence_of :email, :name
  validates :email, :uniqueness => { :message => "Someone already signed up with that email" }
  validates :name, :uniqueness => { :case_sensitive => false,
    :message => "Someone already signed up with that name - please distinguish yourself!" }
  attr_accessible :email, :name

  DEPARTMENTS = ['Customer Support', 'IT and Product', 'HR', 'Administrative', 'Billing']
end
