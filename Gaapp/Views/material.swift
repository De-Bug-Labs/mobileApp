//
//  material.swift
//  Gaapp
//
//  Created by Emilio Rivas on 5/9/21.
//

import SwiftUI

extension String {
    func load() -> UIImage {
        
        do {
            guard let url = URL(string: self) else{
                return UIImage()
            }
            let data: Data = try Data(contentsOf: url)
            
            return UIImage(data: data) ?? UIImage()
        } catch  {
            
        }
        
        return UIImage()
    }
}

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
                            HStack{
                                Link(destination: URL(string: material.link)!, label: {
                                    VStack{
                                        Image(uiImage: material.thumbnail.load()).resizable().frame(width: 300, height: 200).padding(.horizontal, 20).padding(.top, 10)
                                        Text(material.name).font(.system(size: 30)).fontWeight(.bold).padding(.bottom, 10)
                                    }
                                }).padding(.vertical, 6).padding(.horizontal, 1).foregroundColor(.black).background(Color(red: 195 / 255, green: 195 / 255, blue: 195 / 255)).cornerRadius(10.0)
                                
                            }.padding(.vertical, 10)
                            
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
