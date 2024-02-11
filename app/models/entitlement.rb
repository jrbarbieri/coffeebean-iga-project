class Entitlement < ApplicationRecord
  belongs_to :user
  belongs_to :resource
  has_many :certification_user_approvals

  enum role: {
    project_manager: "project_manager",
    payment_manager: "payment_manager",
    database_analyst: "database_analyst",
    bi_analyst: "bi_analyst"
  }
end

