//
//  pListLoader.swift
//  Contacts
//
//  //  Created by Ali Osman DURMAZ on 01.09.2022.
//  Copyright © 2022 Ali Osman DURMAZ. All rights reserved.
//

import Foundation


enum PListError : Error {
    
    case invalidResource //Dosya bulunamadığı zaman vs
    case parsingFailure // Bir dosya var fakat dosyayı import edemiyoruz
}


class pListLoader {
    
    static func array(fileName : String , extension_ : String ) throws -> [[String : String]] {
        
        //dosyanın yolunu bulma
        guard let path = Bundle.main.path(forResource: fileName, ofType: extension_) else {
            throw PListError.invalidResource
        }
        
        
        //verileri elde etme
        guard let data = NSArray(contentsOfFile: path) as? [[String : String]] else {
            throw PListError.parsingFailure
        }
        return data
    }
    
}



class ContactSource {
    
    static var contacts : [Contact] {
        let data = try! pListLoader.array(fileName: "ContactsDB", extension_: "plist")
        return data.compactMap { Contact(data: $0)}
        
    }
    
}




