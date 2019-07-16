class CreateElections < ActiveRecord::Migration[5.2]
  def change
    create_table :elections do |t|
      t.string :name
      t.string :level
      t.date :date
      t.date :date_2
      t.boolean :list

      t.timestamps
    end
  end
end
