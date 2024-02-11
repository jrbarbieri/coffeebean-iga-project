class CertificationUserApproval < ApplicationRecord
  belongs_to :certification_campaign
  belongs_to :entitlement

  enum :status, { pending: 'pending', active: 'active', rejected: 'rejected' }, default: :pending
end
