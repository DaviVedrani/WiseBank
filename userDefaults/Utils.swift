//
//  Utils.swift
//  WiseBank
//
//  Created by Davi Vedrani on 14/11/23.
//

import Foundation

class Utils {
    
    static func saveUserDefaults (value: Any, key:String){
        
        UserDefaults.standard.set(value, forKey: key)
    }
    
    static func getUserDefaults(key:String) -> Any?{
        let value = UserDefaults.standard.object(forKey: key)
        return value
    }
    
}
