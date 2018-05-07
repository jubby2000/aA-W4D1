# == Schema Information
#
# Table name: users
#
#  id         :bigint(8)        not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  name       :string           not null
#  email      :string           not null
#

class User < ApplicationRecord
  validates :name, :email, presence: true
end
