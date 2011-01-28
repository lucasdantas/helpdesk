class Ticket < ActiveRecord::Base
  belongs_to :customer
  belongs_to :operator, :foreign_key => "operator_ini"
  has_many :comments
end
