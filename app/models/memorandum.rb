# == Schema Information
#
# Table name: memorandums
#
#  id         :bigint           not null, primary key
#  content    :text             not null
#  source     :string           default("-")
#  tag        :string           default("Uncategorized")
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  user_id    :bigint           not null
#
# Indexes
#
#  index_memorandums_on_user_id  (user_id)
#
class Memorandum < ApplicationRecord
    validates :content, presence: true
    validates :tag, presence: true
    belongs_to :user
end
