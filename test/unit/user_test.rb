# == Schema Information
#
# Table name: users
#
#  id                   :integer          not null, primary key
#  name                 :string(255)
#  email                :string(255)
#  facebook_uid         :decimal(, )
#  facebook_session_key :string(255)
#  persistence_token    :string(255)
#  created_at           :datetime
#  updated_at           :datetime
#  active               :boolean          default(TRUE)
#  crypted_password     :string(255)
#  password_salt        :string(255)
#

require 'test_helper'

class UserTest < ActiveSupport::TestCase
  # Replace this with your real tests.
  test "the truth" do
    assert true
  end
end
