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
            MaterialModel(id: UUID(), name: "Que hacer en caso de incendio", thumbnail: "https://img.youtube.com/vi/apwK7Y362qU/default.jpg", link: "https://www.youtube.com/watch?v=apwK7Y362qU"),
            MaterialModel(id: UUID(), name: "Musica padre",  thumbnail: "https://img.youtube.com/vi/PJ0u5c9EF1E/default.jpg", link: "https://www.youtube.com/watch?v=PJ0u5c9EF1E"),
            MaterialModel(id: UUID(), name: "Tutorial de telefono",  thumbnail: "https://img.youtube.com/vi/aKWevhr_uzY/default.jpg", link: "https://www.youtube.com/watch?v=aKWevhr_uzY"),
            MaterialModel(id: UUID(), name: "Como cocinar Paella",  thumbnail: "https://img.youtube.com/vi/L_dDUw_QuDU/default.jpg", link: "https://www.youtube.com/watch?v=L_dDUw_QuDU"),
            MaterialModel(id: UUID(), name: "Que hacer en caso de incendio", thumbnail: "https://img.youtube.com/vi/apwK7Y362qU/default.jpg", link: "https://www.youtube.com/watch?v=apwK7Y362qU"),
            MaterialModel(id: UUID(), name: "Musica padre",  thumbnail: "https://img.youtube.com/vi/PJ0u5c9EF1E/default.jpg", link: "https://www.youtube.com/watch?v=PJ0u5c9EF1E"),
            MaterialModel(id: UUID(), name: "Tutorial de telefono",  thumbnail: "https://img.youtube.com/vi/aKWevhr_uzY/default.jpg", link: "https://www.youtube.com/watch?v=aKWevhr_uzY"),
            MaterialModel(id: UUID(), name: "Como cocinar Paella",  thumbnail: "https://img.youtube.com/vi/L_dDUw_QuDU/default.jpg", link: "https://www.youtube.com/watch?v=L_dDUw_QuDU"),
            MaterialModel(id: UUID(), name: "Que hacer en caso de incendio", thumbnail: "https://img.youtube.com/vi/apwK7Y362qU/default.jpg", link: "https://www.youtube.com/watch?v=apwK7Y362qU"),
            MaterialModel(id: UUID(), name: "Musica padre",  thumbnail: "https://img.youtube.com/vi/PJ0u5c9EF1E/default.jpg", link: "https://www.youtube.com/watch?v=PJ0u5c9EF1E"),
            
        ]
    }
}
