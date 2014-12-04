# == Schema Information
#
# Table name: posts
#
#  id         :integer          not null, primary key
#  titulo     :string(255)
#  fecha      :date
#  estado     :boolean
#  texto      :text
#  autor_id   :integer
#  created_at :datetime
#  updated_at :datetime
#
# Indexes
#
#  index_posts_on_autor_id  (autor_id)
#

class Post < ActiveRecord::Base
  belongs_to :autor
  after_initialize :init_value

  validates :titulo,presence: :true
  validates :autor_id,presence: :true
  validates :texto,presence: :true

  def init_value
   self.fecha ||= Time.now

  end
end
