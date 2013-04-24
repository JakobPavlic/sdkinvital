class Exercise < ActiveRecord::Base
  include ActiveModel::MassAssignmentSecurity
  attr_protected :name, :description
end
