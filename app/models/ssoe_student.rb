class SsoeStudent < ActiveRecord::Base
    
    before_save {self.stdsemail = stdsemail.downcase}
    validates(:stdsname, presence: true, length: {maximum: 50})
    
    validates(:stdsclass, presence: true)
    validates(:stdsic, presence: true, length: {is: 9})
    VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
    validates(:stdsemail, presence: true, format: {with: VALID_EMAIL_REGEX}, uniqueness: {case_sensitive: false})
end
