class Student <ApplicationRecord
    validates:name,presence:true,length: { minimum: 3, maximum: 100 }
    validates:roll,presence:true
end