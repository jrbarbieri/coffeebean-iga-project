class CreateCertificationCampaigns < ActiveRecord::Migration[7.1]
  def change
    create_table :certification_campaigns do |t|
      t.date :start_date
      t.integer :duration

      t.timestamps
    end
  end
end
