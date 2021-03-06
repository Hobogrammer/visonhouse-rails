class Application < ActiveRecord::Base
  belongs_to :subject

  has_many :children
  has_many :criminal_arrests
  has_many :employments
  has_many :family_members
  has_many :housing_histories
  has_many :people

  accepts_nested_attributes_for :children, :criminal_arrests, :employments, :family_members, :housing_histories, :people
end
