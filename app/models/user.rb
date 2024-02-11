class User < ApplicationRecord
  has_many :entitlements
  has_many :certification_user_approvals, through: :entitlements
end
