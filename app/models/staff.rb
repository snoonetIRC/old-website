class Staff < ActiveRecord::Base
  attr_accessible :role, :url, :name, :fav_chan, :priority

  default_scope order: 'priority DESC'
end
