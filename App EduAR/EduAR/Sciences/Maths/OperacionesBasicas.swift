//
//  OperacionesBasicas.swift
//  EduAR
//
//  Created by Ultiimate Dog on 13/10/23.
//

import SwiftUI

struct OperacionesBasicas: View {
    private let colorPalette = ColorPalette()
    private let indexes = [IndexIdentifier(id: 0, indexTitle: "First"),
                           IndexIdentifier(id: 1, indexTitle: "Second")]
    
    var body: some View {
        GeometryReader { proxy in
            let deviceWidth = proxy.size.width
            let deviceHeight = proxy.size.height
            
            BackButton(deviceWidth: deviceWidth,
                       deviceHeight: deviceHeight,
                       colorButton: colorPalette.MathColors[0])
            
            ScrollViewReader { value in
                ZStack {
                    ScrollView {
                        Text("Algunos días del año se interrumpía el tráfico y la industria de Ribamoura. El pueblo entero se congregaba a celebrar las solemnidades consuetudinarias, que servían de pretexto para solaces y holgorio. Tal ocurría con el Carnaval, tal con la fiesta de la Patrona, tal con los días de la Semana Santa. A pesar de ser éstos de penitencia y mortificación, para los de Ribamoura tenían carácter de fiesta; en ellos se celebraba, en la iglesia principal, espacioso edificio de la época herreriana, la representación de la Pasión, con personajes de carne y hueso, y encargándose de los papeles gente del pueblo mismo.")
                            .monospaced(true)
                            .id(indexes[1].id)
                        
                        Text("Algunos días del año se interrumpía el tráfico y la industria de Ribamoura. El pueblo entero se congregaba a celebrar las solemnidades consuetudinarias, que servían de pretexto para solaces y holgorio. Tal ocurría con el Carnaval, tal con la fiesta de la Patrona, tal con los días de la Semana Santa. A pesar de ser éstos de penitencia y mortificación, para los de Ribamoura tenían carácter de fiesta; en ellos se celebraba, en la iglesia principal, espacioso edificio de la época herreriana, la representación de la Pasión, con personajes de carne y hueso, y encargándose de los papeles gente del pueblo mismo.")
                            .monospaced(true)

                        Text("Algunos días del año se interrumpía el tráfico y la industria de Ribamoura. El pueblo entero se congregaba a celebrar las solemnidades consuetudinarias, que servían de pretexto para solaces y holgorio. Tal ocurría con el Carnaval, tal con la fiesta de la Patrona, tal con los días de la Semana Santa. A pesar de ser éstos de penitencia y mortificación, para los de Ribamoura tenían carácter de fiesta; en ellos se celebraba, en la iglesia principal, espacioso edificio de la época herreriana, la representación de la Pasión, con personajes de carne y hueso, y encargándose de los papeles gente del pueblo mismo.")
                            .monospaced(true)
                            .bold()
                            .id(indexes[0].id)
                        
                        Text("Algunos días del año se interrumpía el tráfico y la industria de Ribamoura. El pueblo entero se congregaba a celebrar las solemnidades consuetudinarias, que servían de pretexto para solaces y holgorio. Tal ocurría con el Carnaval, tal con la fiesta de la Patrona, tal con los días de la Semana Santa. A pesar de ser éstos de penitencia y mortificación, para los de Ribamoura tenían carácter de fiesta; en ellos se celebraba, en la iglesia principal, espacioso edificio de la época herreriana, la representación de la Pasión, con personajes de carne y hueso, y encargándose de los papeles gente del pueblo mismo.")
                            .monospaced(true)

                    } //Final ScrollView
                    .frame(width: deviceWidth - 50,
                           height: deviceHeight - 50,
                           alignment: .center)
                    .padding(.all, 30)
                    .padding(.top)
                    
                    IndexButton(ids: indexes,deviceWidth: deviceWidth, deviceHeight: deviceHeight)
                } //Final ZStack
            } //Final ScrollViewReader
        } //Final GeometryReader
        .navigationBarBackButtonHidden(true) //Oculta el boton de regreso normal
    }
}

struct OperacionesBasicas_Previews: PreviewProvider {
    static var previews: some View {
        OperacionesBasicas()
    }
}
