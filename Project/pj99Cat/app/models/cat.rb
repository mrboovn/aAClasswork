require 'action_view'
class Cat < ApplicationRecord
  include  ActionView::Helpers::DateHelper
  validates :color, :birth_date, :name, :sex, presence: true
  validates :sex, inclusion: %w(M F)
  def age 
    time_ago_in_words(birth_date)
  end
end