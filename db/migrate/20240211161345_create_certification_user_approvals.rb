class CreateCertificationUserApprovals < ActiveRecord::Migration[7.1]
  def change
    create_table :certification_user_approvals do |t|
      t.string :status
      t.references :certification_campaign, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true
      t.references :entitlement, null: false, foreign_key: true

      t.timestamps
    end
  end
end
