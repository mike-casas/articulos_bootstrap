# == Schema Information
#
# Table name: autors
#
#  id         :integer          not null, primary key
#  nombre     :string(255)
#  apellido   :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class Autor < ActiveRecord::Base
  has_many :posts
end
