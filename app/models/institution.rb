class Institution < ActiveRecord::Base
  has_many :customers
end
