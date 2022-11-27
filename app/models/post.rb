class Post < ApplicationRecord
    validates :title, exclusion: { in: ["True Facts"] }
    validates :content, length: { minimum: 250 }
    validates :summary, length: { maximum: 250 }
    validates :category, inclusion: { in: %w(Fiction Non-Fiction) }
    validates :title, presence: true
  end