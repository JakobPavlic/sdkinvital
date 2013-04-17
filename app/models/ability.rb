class Ability
  include CanCan::Ability

  def initialize(user)

    if user.nil?
      can :read, :all
    else
      can :read, :all
      if user.role == "instructor" || user.role == "sveznalac"
        can :create, Post
        can :update, Post do |post|
          post.try(:user) == user
        end
        can :destroy, Post do |post|
          post.try(:user) == user
        end
      end    
    end
  end
end
