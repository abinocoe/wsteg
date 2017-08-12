class Example < ApplicationRecord
    # validates :title, presence: true
    has_attached_file :pdf
    validates_attachment :pdf, content_type: { content_type: ['application/pdf', 'application/msword', 'text/plain'] }

end
