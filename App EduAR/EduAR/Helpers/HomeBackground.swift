//
//  HomeBackground.swift
//  EduAR
//
//  Created by Ultiimate Dog on 12/10/23.
//

import SwiftUI

// Este codigo se encarga de crear el fondo de la APP

struct HomeBackground: View {
    let deviceWidth: Double
    let deviceHeight: Double
    let colors: [Color]
    
    var body: some View {
        VStack(spacing: 0) {
            Rectangle()
                .fill(
                    LinearGradient(colors: [colors[3], colors[0]],
                                   startPoint: .top, endPoint: .bottom))
                .frame(height: .infinity)
            
            Rectangle()
                .fill(
                    LinearGradient(colors: [colors[0], colors[1]],
                                   startPoint: .top, endPoint: .bottom))
                .frame(height: deviceHeight * 0.132 > 120 ? 120 + deviceWidth * 0.1 :
                        deviceHeight * 0.132 + deviceWidth * 0.1)
            Rectangle()
                .fill(
                    LinearGradient(colors: [colors[1], colors[2]],
                                   startPoint: .top, endPoint: .bottom))
                .frame(height: deviceHeight * 0.132 > 120 ? 120 + deviceWidth * 0.1 :
                        deviceHeight * 0.132 + deviceWidth * 0.1)
            Rectangle()
                .fill(
                    LinearGradient(colors: [colors[2], colors[3]],
                                   startPoint: .top, endPoint: .bottom))
                .frame(height: deviceHeight * 0.132 > 120 ? 120 + deviceWidth * 0.1 :
                        deviceHeight * 0.132 + deviceWidth * 0.1)
            
            Rectangle()
                .fill(
                    LinearGradient(colors: [colors[3], colors[0]],
                                   startPoint: .top, endPoint: .bottom))
                .frame(height: .infinity)
        }
    }
}

struct HomeBackground_Previews: PreviewProvider {
    static var previews: some View {
        HomeBackground(deviceWidth: 393, deviceHeight: 700, colors: [.red,.blue,.black,.purple])
    }
}
