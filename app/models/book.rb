class Book < ApplicationRecord
  belongs_to :genre
  belongs_to :submitted_by, class_name: 'User', foreign_key: 'submitted_by_id'
  has_many :reviews

  attr_accessor :brief_description

  before_save :extract_brief_description

  private

  def extract_brief_description
    self.brief_description = detailed_description.to_s.split("\n\n").first
  end
  
end
