class Page < ApplicationRecord
    extend FriendlyId
    friendly_id :title
    validates :title, presence: true
    validates :body, presence: true
    attr_accessor :slug
end
