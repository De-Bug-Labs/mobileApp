//
//  contactos.swift
//  Gaapp
//
//  Created by Emilio Rivas on 5/29/21.
//

import SwiftUI

struct contactos: View {
    
    private func callNumber(phoneNumber:String) {
      if let phoneCallURL = URL(string: "tel://\(phoneNumber)") {
        let application:UIApplication = UIApplication.shared
        if (application.canOpenURL(phoneCallURL)) {
            application.open(phoneCallURL, options: [:], completionHandler: nil)
        }
      }
    }
    private func messageNumber(phoneNumber:String) {
      if let messageURL = URL(string: "sms:+\(phoneNumber)") {
        let application:UIApplication = UIApplication.shared
        if (application.canOpenURL(messageURL)) {
            application.open(messageURL, options: [:], completionHandler: nil)
        }
      }
    }
    private func mailGAAP(mail:String) {
      if let mailURL = URL(string: "mailto:\(mail)") {
        let application:UIApplication = UIApplication.shared
        if (application.canOpenURL(mailURL)) {
            application.open(mailURL, options: [:], completionHandler: nil)
        }
      }
    }
    
    
    var body: some View {
        ZStack{
            Color(red: 40 / 255, green: 136 / 255, blue: 168 / 255).ignoresSafeArea()
            VStack{
                HStack{
                    VStack{
                        Image("help").resizable().frame(width: 100, height: 100).padding(.top, 10)
                        Text("Contacto GAAP")
                            .font(.system(size: 32))
                            .fontWeight(.bold)
                            .foregroundColor(Color.white)
                            .multilineTextAlignment(.center)
                    }
                }.padding(.top, 70).ignoresSafeArea()
                Spacer()
                VStack{
                    HStack{
                        Button(action: {callNumber(phoneNumber: "4422046497")}) {
                            Image(systemName: "phone.fill").foregroundColor(.white)
                            Text("Llamar a GAAP I.A.P")
                                .fontWeight(.heavy)
                        }.padding().padding(.horizontal).foregroundColor(.white).background(Color.green).cornerRadius(7.0)
                        .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.white, lineWidth: 3.0)).font(.system(size: 23))
                    }.padding(.vertical, 20)
                    HStack{
                        Button(action: {messageNumber(phoneNumber: "4422046497")}) {
                            Image(systemName: "message.fill").foregroundColor(.white)
                            Text("Mensaje a GAAP I.A.P")
                                .fontWeight(.heavy)
                        }.padding(14).padding(.horizontal, 10).foregroundColor(.white).background(Color.blue).cornerRadius(7.0)
                        .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.white, lineWidth: 3.0)).font(.system(size: 23))
                    
                    }.padding(.vertical, 20)
                    HStack{
                        Button(action: {mailGAAP(mail: "miles.fra.2000@gmail.com")}) {
                            Image(systemName: "envelope.fill").foregroundColor(.white)
                            Text("Email a GAAP I.A.P")
                                .fontWeight(.heavy)
                        }.padding(15).padding(.horizontal, 25).foregroundColor(.white).background(Color.red).cornerRadius(7.0)
                        .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.white, lineWidth: 3.0)).font(.system(size: 23))
                    }.padding(.vertical, 20)
                }.padding(.bottom, 100)
                
                Spacer()
            }
        }
    }
}

struct contactos_Previews: PreviewProvider {
    static var previews: some View {
        contactos()
    }
}
