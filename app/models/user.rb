class User < ActiveRecord::Base
  include ActiveModel::MassAssignmentSecurity
  attr_protected :uid, :provider, :name
  def self.create_with_omniauth(auth)
    User.create!(
      :provider => auth["provider"],
      :uid => auth["uid"],
      :name => auth["info"]["name"])
  end
end
