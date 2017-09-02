class Report < ApplicationRecord
    belongs_to :grade
    belongs_to :subject
    belongs_to :type
    
    mount_uploader :picture, PictureUploader
    mount_uploader :file, FileUploader
    validates :aim, presence: true
    validates :content, presence: true
    validates :comment, presence: true
    validate :picture_size
    
private
    
    def picture_size
        if picture.size > 5.megabytes
            erros.add(:picture, "5MB以下のファイルにして下さい。")
        end
    end
end
