# == Schema Information
#
# Table name: comments
#
#  id         :integer          not null, primary key
#  body       :string(255)
#  author_id  :integer
#  star_id    :integer
#  created_at :datetime
#  updated_at :datetime
#

class Comment < ActiveRecord::Base
  belongs_to :author, :class_name => 'User'
  belongs_to :star
  validates_presence_of :author, :body, :star
  
  after_create do |comment|
    Mailer.deliver_comment(comment)
  end
end
