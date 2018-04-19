json.extract! tweet, :id, :time_posted, :author, :content, :user_id, :created_at, :updated_at
json.url tweet_url(tweet, format: :json)
