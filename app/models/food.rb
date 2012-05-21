class Food < ActiveRecord::Base
  attr_accessible :category_id, :cost, :name
  
  belongs_to :category
end
# == Schema Information
#
# Table name: foods
#
#  id          :integer         not null, primary key
#  name        :string(255)
#  cost        :integer
#  category_id :integer
#  created_at  :datetime        not null
#  updated_at  :datetime        not null
#

