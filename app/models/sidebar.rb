class Sidebar < ActiveRecord::Base
  attr_accessible :parent_id, :page_name, :name, :linktype, :cssclass, :rank

  has_ancestry

  scope :ranked, order('rank asc')
end