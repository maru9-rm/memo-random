# == Schema Information
#
# Table name: memorandums
#
#  id         :bigint           not null, primary key
#  content    :text             not null
#  private    :boolean          default(FALSE)
#  source     :string           default("")
#  tag        :string           default("Uncategorized")
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  user_id    :bigint           not null
#
# Indexes
#
#  index_memorandums_on_user_id  (user_id)
#
require 'test_helper'

class MemorandumTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
