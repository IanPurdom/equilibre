# == Schema Information
#
# Table name: profils
#
#  address    :string
#  city       :string
#  created_at :datetime         not null
#  email      :string
#  first_name :string
#  id         :bigint           not null, primary key
#  last_name  :string
#  phone      :string
#  profession :string
#  updated_at :datetime         not null
#  zip_code   :string
#

class Profil < ApplicationRecord
    has_many :bank_accounts
    has_many :campaigns
    has_many :campaigns_as_candidate, :class_name => 'Campaign', :foreign_key => 'candidate_id'
    has_many :campaigns_as_agent, :class_name => 'Campaign', :foreign_key => 'agent_id'
end
