# == Schema Information
#
# Table name: stars
#
#  id         :integer          not null, primary key
#  from_id    :integer
#  reason     :string(1024)
#  created_at :datetime
#  updated_at :datetime
#  star_type  :string(255)      default("standard"), not null
#

require 'test_helper'

class StarTest < ActiveSupport::TestCase
  # Replace this with your real tests.
  test "the truth" do
    assert true
  end
end
