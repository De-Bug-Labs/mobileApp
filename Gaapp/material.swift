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
                        Image("paper-crafts").resizable().frame(width: 100, height: 100).padding(.top, 10)
                        Text("MATERIAL DIDACTICO")
                            .font(.system(size: 32))
                            .fontWeight(.bold)
                            .foregroundColor(Color.white)
                            .multilineTextAlignment(.center)
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
                            }).font(.system(size: 23))
                            .foregroundColor(Color.white).padding(15).background(Color(red: 70 / 255, green: 70 / 255, blue: 70 / 255)).cornerRadius(15)
                        }
                    }
                    .padding(.horizontal, 2)
                        
                }.padding(.top, 30).padding(.bottom, 90)
            }.ignoresSafeArea()
        }
    }
}

struct material_Previews: PreviewProvider {
    static var previews: some View {
        material()
    }
}
