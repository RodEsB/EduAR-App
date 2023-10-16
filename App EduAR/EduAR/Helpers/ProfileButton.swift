//
//  ProfileButton.swift
//  EduAR
//
//  Created by Ultiimate Dog on 14/10/23.
//

import SwiftUI

struct ProfileButton: View {
    @State var showSettings = false
    let deviceWidth: Double
    let deviceHeight: Double
    
    var body: some View {
        //Crea el boton del perfil
        Button {
            self.showSettings.toggle()
        } label: {
            Image(systemName: "person.crop.circle")
                .resizable()
                .scaledToFit()
                .foregroundStyle(.black)
        }
        .frame(width: deviceWidth * 0.1 > 70 ? 70 : deviceWidth * 0.1)
        //Posiciona el boton de configuracion
        .padding(.trailing, deviceWidth * 0.204 > 150 ? 150 : deviceWidth * 0.204)
        .padding(.top, deviceHeight * 0.204 > 180 ? 180 : deviceHeight * 0.204)
        .position(x: deviceWidth, y: 0)
        .ignoresSafeArea()
        
        
        .sheet(isPresented: $showSettings) { //Presenta el perfil como una view emergente
            Profile()
        }
    }
}

struct ProfileButton_Preview: PreviewProvider {
    static var previews: some View {
        ProfileButton(deviceWidth: 393, deviceHeight: 759)
    }
}
