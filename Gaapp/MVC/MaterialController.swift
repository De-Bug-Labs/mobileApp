//
//  MaterialController.swift
//  Gaapp
//
//  Created by Emilio Rivas on 5/9/21.
//

import Foundation

class MaterialController {
    
    var materiales: [MaterialModel]
    
    init() {
        self.materiales = [
            MaterialModel(id: UUID(), name: "Tutorial de telefono",  thumbnail: "https://img.youtube.com/vi/aKWevhr_uzY/default.jpg", link: "https://www.youtube.com/watch?v=aKWevhr_uzY"),
            MaterialModel(id: UUID(), name: "Como cocinar Paella",  thumbnail: "https://img.youtube.com/vi/L_dDUw_QuDU/default.jpg", link: "https://www.youtube.com/watch?v=L_dDUw_QuDU"),
            MaterialModel(id: UUID(), name: "Incendios", thumbnail: "https://img.youtube.com/vi/apwK7Y362qU/default.jpg", link: "https://www.youtube.com/watch?v=apwK7Y362qU"),
            MaterialModel(id: UUID(), name: "Musica padre",  thumbnail: "https://img.youtube.com/vi/PJ0u5c9EF1E/default.jpg", link: "https://www.youtube.com/watch?v=PJ0u5c9EF1E"),
            MaterialModel(id: UUID(), name: "Le festin",  thumbnail: "https://img.youtube.com/vi/mWQqN6afjOQ/default.jpg", link: "https://youtu.be/mWQqN6afjOQ"),
            MaterialModel(id: UUID(), name: "Documental Midway",  thumbnail: "https://img.youtube.com/vi/uZGGn2ZfGZo/default.jpg", link: "https://youtu.be/uZGGn2ZfGZo"),
            MaterialModel(id: UUID(), name: "Informe COVID", thumbnail: "https://img.youtube.com/vi/JAuVGZzdPH8/default.jpg", link: "https://youtu.be/JAuVGZzdPH8"),
            MaterialModel(id: UUID(), name: "Ejercicios",  thumbnail: "https://img.youtube.com/vi/gvCLoR_349M/default.jpg", link: "https://youtu.be/gvCLoR_349M"),
        ]
    }
}
