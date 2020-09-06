class UserTopic < ApplicationRecord
  belongs_to :user
  belongs_to :topic

  validates_uniqueness_of :topic_id, scope: :user_id
end
