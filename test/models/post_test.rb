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

require 'test_helper'

class PostTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
