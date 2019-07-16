class CreateCampaigns < ActiveRecord::Migration[5.2]
  def change
    create_table :campaigns do |t|
      t.references :user, foreign_key: true
      t.references :election, foreign_key: true
      t.references :candidate
      t.references :agent
      t.decimal :result
      t.decimal :result_2

      t.timestamps
    end
  end
end
