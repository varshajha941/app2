class Department <ApplicationRecord
    has_many :students
    validates :dept, presence: true, 
                       uniqueness: { case_sensitive: false }, 
                       length: { minimum: 3, maximum: 25 }
   VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
   validates :mail, presence: true, 
                       uniqueness: { case_sensitive: false }, 
                       length: { maximum: 105 },
                       format: { with: VALID_EMAIL_REGEX }
end