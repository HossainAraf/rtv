# frozen_string_literal: true

class Ability
  include CanCan::Ability

  def initialize(user)
    # Define user roles
    user ||= User.new # guest user (not logged in)
    if user.admin?
      can :manage, Feedback
    else
      can %i[index show], Feedback
    end
    
    # See the wiki for details:
    # https://github.com/CanCanCommunity/cancancan/blob/develop/docs/define_check_abilities.md
  end
end
