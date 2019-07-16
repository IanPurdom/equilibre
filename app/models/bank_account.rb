# == Schema Information
#
# Table name: bank_accounts
#
#  account_number :string
#  address        :string
#  bank_name      :string
#  city           :string
#  created_at     :datetime         not null
#  id             :bigint           not null, primary key
#  opening_date   :date
#  profil_id      :bigint
#  title          :string
#  updated_at     :datetime         not null
#  zip_code       :string
#
# Indexes
#
#  index_bank_accounts_on_profil_id  (profil_id)
#
# Foreign Keys
#
#  fk_rails_...  (profil_id => profils.id)
#

class BankAccount < ApplicationRecord
  belongs_to :profil
  validates :account_number, presence: true
  validates :title, presence: true
  validates :bank_name, presence: true
  validates :opening_date, presence: true
  validates :address, presence: true
  validates :city, presence: true
  validates :zip_code, presence: true
  validates :profil_id, presence: true
end
