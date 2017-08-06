class Example < ApplicationRecord
    has_attached_file :pdf
    validates_attachment_content_type :pdf, :content_type => ['application/pdf', 'application/msword', 'text/plain'], :if => :pdf_attached?

    def pdf_attached?
    self.pdf.file?
    end
end
