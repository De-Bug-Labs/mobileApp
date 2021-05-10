//
//  MaterialModel.swift
//  Gaapp
//
//  Created by Emilio Rivas on 5/9/21.
//

import Foundation

struct MaterialModel: Identifiable, Hashable{
    
    var id: UUID
    var name: String
    var thumbnail: String
    var link: String
    
    func hash(into hasher: inout Hasher){
        hasher.combine(id)
    }
}
