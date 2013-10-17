class Howtolist < ActiveRecord::Base
  attr_accessible :how_to

  has_many :steps, :dependent => :delete_all
end
