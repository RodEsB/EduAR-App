//
//  Home.swift
//  EduAR
//
//  Created by Ultiimate Dog on 10/10/23.
//

import SwiftUI

struct Home: View {
    private let colorPalette = ColorPalette()
    
    var body: some View {
        //El GeometryReader es necesario para obtener el tamaño del dispotivo utilizado
        GeometryReader { proxy in
            let deviceWidth = proxy.size.width //Ancho del dispositivo
            let deviceHeight = proxy.size.height //Largo del dispositivo
                        
            NavigationStack {
                ZStack {
                    //Crea el stack para el fondo
                    Rectangle()
                        .fill(
                            LinearGradient(colors: [.white, .gray, .black], startPoint: .center, endPoint: .bottom))
                        .ignoresSafeArea()
                    
                    //Crea el stack para los botones
                    VStack(spacing: 0) {
                        //Crea el link a la respectiva view
                        NavigationLink {
                            Maths()
                        } label:  {
                            //Crea el boton para el link
                            HomeButton( buttonWidth: deviceWidth,
                                        buttonHeight: deviceHeight,
                                        science: "Matematicas",
                                        buttonColor: colorPalette.MathColors[0])
                        }
                        
                        NavigationLink {
                            Chemistry()
                        } label: {
                            HomeButton( buttonWidth: deviceWidth,
                                        buttonHeight: deviceHeight,
                                        science: "Quimica",
                                        buttonColor: colorPalette.ChemistryColors[0])
                        }
                        
                        NavigationLink {
                            Biology()
                        } label:  {
                            HomeButton( buttonWidth: deviceWidth,
                                        buttonHeight: deviceHeight,
                                        science: "Biologia \(deviceWidth)",
                                        buttonColor: colorPalette.BiologyColors[0])
                        }
                        
                        NavigationLink {
                            Physics()
                        } label:  {
                            HomeButton( buttonWidth: deviceWidth,
                                        buttonHeight: deviceHeight,
                                        science: "Fisica \(deviceHeight)",
                                        buttonColor: colorPalette.PhysicsColors[0])
                        }
                    }
                    .frame(width: deviceWidth, height: deviceHeight)
                    
                 ProfileButton(deviceWidth: deviceWidth, deviceHeight: deviceHeight)

                } //Final ZStack
            }
        } //Final GeometryReader
    }
}

// Estas lineas de codigo se encargan de que poder regresar con un slide
extension UINavigationController: UIGestureRecognizerDelegate {
    override open func viewDidLoad() {
        super.viewDidLoad()
        interactivePopGestureRecognizer?.delegate = self
    }
    public func gestureRecognizerShouldBegin(_ gestureRecognizer: UIGestureRecognizer) -> Bool {
        return viewControllers.count > 1
    }
}
// Aqui terminan las lineas

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
