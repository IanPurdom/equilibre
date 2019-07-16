class Campaign < ApplicationRecord
  belongs_to :user
  belongs_to :election
  belongs_to :candidate, :class_name => 'Profil'
  belongs_to :agent, :class_name => 'Profil'
end
