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

class User < ActiveRecord::Base
  acts_as_authentic

  has_and_belongs_to_many :stars

  has_many :stars_given, :class_name => 'Star', :foreign_key => :from_id

  named_scope :active,   :conditions => {:active => true}
  named_scope :inactive, :conditions => {:active => false}

  def can_second?(star)
    return false if [star.from, star.to].flatten.include?(self)
    return false if seconded?(star)
    true
  end

  def most_recent_star
    stars.recent.first
  end

  def others
    User.active.all - [self]
  end

  def second(star)
    star.seconds.create(:user => self) if can_second?(star)
  end

  def seconded?(star)
    star.seconded_by?(self)
  end
end
