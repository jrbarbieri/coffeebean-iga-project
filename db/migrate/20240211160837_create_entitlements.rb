class CreateEntitlements < ActiveRecord::Migration[7.1]
  def change
    create_table :entitlements do |t|
      t.string :type
      t.string :status
      t.references :user, null: false, foreign_key: true
      t.references :resource, null: false, foreign_key: true

      t.timestamps
    end
  end
end
