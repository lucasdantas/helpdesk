class Customer < ActiveRecord::Base
  belongs_to :institution
  has_many :tickets
end
