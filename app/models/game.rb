# == Schema Information
#
# Table name: games
#
#  id             :integer          not null, primary key
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#  is_in_progress :boolean          default(TRUE)
#

class Game < ActiveRecord::Base
  attr_accessor :deck

  has_and_belongs_to_many :users

  def set_is_in_progress(status)
    self.is_in_progress = status
    self.save
  end
end
