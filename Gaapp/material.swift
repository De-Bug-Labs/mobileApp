//
//  material.swift
//  Gaapp
//
//  Created by Emilio Rivas on 5/9/21.
//

import SwiftUI

struct material: View {
    
    var materialController = MaterialController()
    
    var body: some View {
        ZStack{
            Color(red: 40 / 255, green: 136 / 255, blue: 168 / 255).ignoresSafeArea()
            VStack {
                HStack{
                    VStack{
                        Text("MATERIAL")
                            .font(.system(size: 34))
                            .fontWeight(.bold)
                            .foregroundColor(Color.white)
                            .multilineTextAlignment(.center)
                        Text("Videos didacticos para tu aprendizaje, para navegar simplemente deslizalos.")
                            .font(.system(size: 25))
                            .foregroundColor(Color.white)
                            .multilineTextAlignment(.center)
                            .padding([.top, .leading, .trailing], 30.0)
                    }
                }.padding(.top, 50)
                Spacer()
                ScrollView(.vertical, showsIndicators: false) {
                    
                    VStack{
                        ForEach(materialController.materiales, id: \.self){ material in
                            Link(destination: URL(string: material.link)!, label: {
                                Label(
                                    title: { Text(material.name) },
                                    icon: { Image(systemName: "book") }

                                )
                            }).font(.system(size: 25))
                            .foregroundColor(Color.black).padding().background(Color(red: 240 / 255, green: 210 / 255, blue: 136 / 255)).cornerRadius(15)
                        }
                    }
                        
                }.padding(.vertical, 70)
            }.ignoresSafeArea()
        }
    }
}

struct material_Previews: PreviewProvider {
    static var previews: some View {
        material()
    }
}
