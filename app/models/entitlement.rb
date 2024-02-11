class Entitlement < ApplicationRecord
  belongs_to :user
  belongs_to :resource
  has_many :certification_user_approvals

  enum :status, { pending: 'pending', active: 'active', rejected: 'rejected' }, default: :pending
end

