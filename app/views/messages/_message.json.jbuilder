json.extract! message, :id, :sender, :destination, :source, :content, :status, :account_id, :created_at, :updated_at
json.url message_url(message, format: :json)
