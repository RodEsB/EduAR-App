//
//  HomeButton.swift
//  EduAR
//
//  Created by Ultiimate Dog on 10/10/23.
//

import SwiftUI

struct HomeButton: View {
    let buttonWidth: Double
    let buttonHeight: Double
    let science: String
    let buttonColor: Color
    
    var body: some View {
        //Crea al recuadro para cada boton en la APP
        Rectangle()
            .fill(buttonColor) //Se encarga del color del boton
            .frame( width: buttonWidth * 0.763 > 600 ? 600 : buttonWidth * 0.763,
                    height: buttonHeight * 0.132 > 120 ? 120 : buttonHeight * 0.132)    //Se encarga del tamaño del boton
            .cornerRadius(buttonWidth * 0.0636) //Se encarga de hacer las esquinas redondas
            .shadow(radius: buttonWidth * 0.03)  //Se encarga de hacer una sombra en el boton. Todavia no se si quitarla o dejarla
            .overlay {
                //Se encarga de poner el texto en el boton
                Text(science)
                    .font(.largeTitle)
                    .foregroundColor(.white)
                    .bold()
            }
        .padding(.all, buttonWidth * 0.05) //Define el espacio entre el boton y los otros botones
    }
}

struct HomeButton_Previews: PreviewProvider {
    static var previews: some View {
        HomeButton(buttonWidth: 300, buttonHeight: 300, science: "Maths", buttonColor: Color(.blue))
    }
}
