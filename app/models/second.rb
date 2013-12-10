# == Schema Information
#
# Table name: seconds
#
#  id         :integer          not null, primary key
#  star_id    :integer
#  user_id    :integer
#  created_at :datetime
#  updated_at :datetime
#

class Second < ActiveRecord::Base
  belongs_to :star
  belongs_to :user
end
