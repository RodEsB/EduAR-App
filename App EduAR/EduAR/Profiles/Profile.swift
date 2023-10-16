//
//  Configuration.swift
//  EduAR
//
//  Created by Ultiimate Dog on 11/10/23.
//

import SwiftUI

struct Profile: View {
    var body: some View {
        VStack {
            Text("Nombre")
            Text("Titulo")
            Text("Permitir Notificaciones")
            Text("Activar animaciones")
            Text("Foto de perfil")
            Text("Progreso Matematicas")
            Text("Progreso Quimica")
            Text("Progreso Biologia")
            Text("Progreso Fisica")
            Text("Quizzes completados")
            Text("Lecciones completadas")
            Text("Logros")
        }
    }
}

struct Profile_Previews: PreviewProvider {
    static var previews: some View {
        Profile()
    }
}
