class Comment < ActiveRecord::Base
  belongs_to :ticket
  belongs_to :operator
end
