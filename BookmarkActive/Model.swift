import SwiftUI

struct LinkModel: Codable, Hashable, Identifiable {
    var id = UUID()
    var title: String
    var link: String
}



@propertyWrapper
struct MyAppDataStorage<T: Codable>{
    private let key: String
    private let defaultValue: T
    
    init(key: String, defaultValue: T){
        self.key = key
        self.defaultValue = defaultValue
    }
    
    var wrappedValue: T{
        get{
            guard let data = UserDefaults.standard.object(forKey: key) as? Data else{
                return defaultValue
            }
            let value = try? JSONDecoder().decode(T.self, from: data)
            return value ?? defaultValue
        }
        
        set{
            let data = try? JSONEncoder().encode(newValue)
            UserDefaults.standard.set(data, forKey: key)
        }
    }
}

class Storage{
    @MyAppDataStorage(key: "linkmodels", defaultValue: [])
    
    static var AppStorageLinkModels: [LinkModel]
}
