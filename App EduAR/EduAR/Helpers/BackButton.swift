//
//  BackButton.swift
//  EduAR
//
//  Created by Ultiimate Dog on 10/10/23.
//

import SwiftUI

struct BackButton: View {
    @Environment(\.dismiss) var dismiss
    let deviceWidth: Double
    let deviceHeight: Double
    let colorButton: Color
    
    var body: some View {
        Button {
            dismiss() //Te regresa a la view anterior
        } label: {
            Image(systemName: "arrowshape.left.circle.fill") //Esta imagen se cambiara por una personalizada
                .resizable() //Le permite cambiar de tamaño
                .aspectRatio(contentMode: .fit) //Mantine el ratio de la imagen
                .foregroundStyle(colorButton) //Cambia el color del boton
                .frame(width: deviceWidth * 0.1 > 70 ? 70 : deviceWidth * 0.1 )
        }
        .padding(.leading, deviceWidth * 0.204 > 150 ? 150 : deviceWidth * 0.204)
        .padding(.top, deviceHeight * 0.204 > 180 ? 180 : deviceHeight * 0.204)
        .position(x: 0, y: 0)
        .ignoresSafeArea()
    }
}

struct BackButton_Previews: PreviewProvider {
    static var previews: some View {
        BackButton(deviceWidth: 1000, deviceHeight: 1000,colorButton: Color.red)
    }
}
