class User < ActiveRecord::Base
  include ActiveModel::MassAssignmentSecurity
  attr_protected :uid, :provider, :name
  def self.create_with_omniauth(auth)
    user = User.create!
    user.provider = auth["provider"]
    user.uid = auth["uid"]
    user.name = auth["info"]["name"]
    user.save!
  end
end
