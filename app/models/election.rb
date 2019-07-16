# == Schema Information
#
# Table name: elections
#
#  created_at :datetime         not null
#  date       :date
#  date_2     :date
#  id         :bigint           not null, primary key
#  level      :string
#  list       :boolean
#  name       :string
#  updated_at :datetime         not null
#

class Election < ApplicationRecord
    has_many :campaigns
end
