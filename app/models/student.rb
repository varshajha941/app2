class Student <ApplicationRecord
    validates:name,presence:true,length: { minimum: 3, maximum: 10 }
    validates:roll,presence:true
end