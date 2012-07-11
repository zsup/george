class Device < ActiveRecord::Base
  attr_accessible :name, :type
  belongs_to :user
end
