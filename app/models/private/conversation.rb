class Private::Conversation < ApplicationRecord
  has_many :messages, class_name: "Private::Message", foreign_key: :conversation_id
  belongs_to :sender, foreign_key: :sender_id, class_name: 'User'
  belongs_to :recipient, foreign_key: :recipient_id, class_name: 'User'
end
