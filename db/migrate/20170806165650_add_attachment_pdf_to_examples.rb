class AddAttachmentPdfToExamples < ActiveRecord::Migration
  def self.up
    change_table :examples do |t|
      t.attachment :pdf
    end
  end

  def self.down
    remove_attachment :examples, :pdf
  end
end
