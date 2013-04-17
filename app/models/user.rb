class User < ActiveRecord::Base
  include ActiveModel::MassAssignmentSecurity
  has_many :posts
  attr_protected :uid, :provider, :name, :role
  def self.create_with_omniauth(auth)
    user = User.create!
    user.provider = auth["provider"]
    user.uid = auth["uid"]
    user.name = auth["info"]["name"]
    user.save!
    user
  end
end
