//
//  SubjectButton.swift
//  EduAR
//
//  Created by Ultiimate Dog on 11/10/23.
//

import SwiftUI

struct SubjectButton: View {
    let buttonWidth: Double
    let buttonHeight: Double
    let subject: String
    let buttonColor: Color
    
    var body: some View {
        //Crea al recuadro para cada boton en la APP
        Rectangle()
            .fill(buttonColor)    //Se encarga del color del boton
            .frame( width: buttonWidth * 0.763 > 600 ? 600 : buttonWidth * 0.763,
                    height: buttonHeight * 0.132 > 120 ? 120 : buttonHeight * 0.132)    //Se encarga del tamaño del boton
            .cornerRadius(buttonWidth * 0.0636) //Se encarga de hacer las esquinas redondas
            .overlay {
                //Se encarga de poner el texto en el boton
                Text(subject)
                    .font(buttonWidth * 0.763 > 500 ? .title : .title2)
                    .foregroundColor(.white)
                    .bold()
                    .padding(.all, 10)
            }
        .padding(.all, buttonWidth * 0.02) //Define el espacio entre el boton y los otros botones
    }
}

struct SubjectButton_Previews: PreviewProvider {
    static var previews: some View {
        SubjectButton(buttonWidth: 300, buttonHeight: 300, subject: "Vectors", buttonColor: Color(.blue))
    }
}
