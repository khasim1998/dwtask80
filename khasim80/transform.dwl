%dw 2.0
output application/xml
//Here i am removed the ssn field and password from the given payload by using mapobject
---
users: {
    (payload.users mapObject {
        user: {
            personal_information:$.personal_information -"ssn",
            login_information:$.login_information -"password"
              }

                            }
    )
       }
