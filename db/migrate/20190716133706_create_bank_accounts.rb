class CreateBankAccounts < ActiveRecord::Migration[5.2]
  def change
    create_table :bank_accounts do |t|
      t.references :profil, foreign_key: true
      t.string :title
      t.string :account_number
      t.string :bank_name
      t.string :address
      t.string :zip_code
      t.string :city
      t.date :opening_date

      t.timestamps
    end
  end
end
