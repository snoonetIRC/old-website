class Page < ActiveRecord::Base
  enum content_type: [ :html ]
end
