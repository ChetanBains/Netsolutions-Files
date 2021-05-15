import Foundation
// key value coding
// nskeyvalue coding protocol
class User : NSObject{
    @objc private var privname = String()
    @objc var name = String()
    @objc var age = 0
    @objc var nickname = ["chetan","bains"]
}
extension User{
    var nameValue : String {
        let privname = value(forKey: "privname") as? String ?? ""
        return privname
    }
    
}


let user = User()
//user.name = "singh"
user.setValue("Hello", forKey: "privname")


user.setValue("singh", forKey: "name")
print(user.name)

user.setValue("jeev", forKey: #keyPath(User.name))
print(user.name)

user.setValuesForKeys(["name" : "World","age" : 21])
print(user.name)
print(user.age)


let mutableArray = user.mutableArrayValue(forKey: #keyPath(User.nickname))
mutableArray.add("jeev")
print(user.nickname)
