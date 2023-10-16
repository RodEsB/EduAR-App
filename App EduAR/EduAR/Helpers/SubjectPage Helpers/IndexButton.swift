//
//  IndexButton.swift
//  EduAR
//
//  Created by Ultiimate Dog on 14/10/23.
//

import SwiftUI

struct IndexIdentifier: Identifiable {
    init(id: Int, indexTitle: String) {
        self.id = id
        self.indexTitle = indexTitle
    }
    
    let id: Int
    let indexTitle: String
}

struct IndexButton: View {
    @State var showIndex = true
    //var value: ScrollViewProxy
    let ids: [IndexIdentifier]

    let deviceWidth: Double
    let deviceHeight: Double
    
    var body: some View {
        //Muestra el boton si no se muestre el indice
        if !showIndex {
            Button() {
                withAnimation {
                    self.showIndex.toggle()
                }
            } label: {
                Image(systemName: "line.3.horizontal.decrease.circle.fill")
                    .resizable()
                    .scaledToFit()
                    .foregroundStyle(.black)
            }
            .frame(width: deviceWidth * 0.1 > 70 ? 70 : deviceWidth * 0.1)
            .padding(.trailing, deviceWidth * 0.204 > 150 ? 150 : deviceWidth * 0.204)
            .padding(.top, deviceHeight * 0.204 > 180 ? 180 : deviceHeight * 0.204)
            .position(x: deviceWidth, y: 0)
            .ignoresSafeArea()
        }
        
        //Muestra el indice
        if showIndex {
            Rectangle()
                .opacity(0.3)
                .ignoresSafeArea()
        }
         
        if showIndex {
            HStack(spacing: 0) {
                Button {
                    withAnimation {
                        self.showIndex.toggle()
                    }
                } label: {
                    Rectangle()
                        .fill(.clear)
                        .ignoresSafeArea()
                }
                    
                Rectangle()
                    .opacity(0.6)
                    .frame(width: deviceWidth / 2 > 300 ? 300 : deviceWidth / 2,
                            height: .infinity)
                    .ignoresSafeArea()
                    .overlay (
                        List(ids) { id in
                            Button {
                                //value.scrollTo(id.id)
                            } label: {
                                Text(id.indexTitle)
                            }
                            .font(.title2)
                            .bold()
                            .listRowSeparator(.hidden)
                        }
                            .listRowSpacing(20)
                            .listStyle(.inset)
                            .scrollContentBackground(.hidden)
                    )
            }
            .transition(.asymmetric(insertion: .move(edge: .trailing), removal: .move(edge: .trailing)))
        } //Final if
    }
}

struct IndexButton_Preview: PreviewProvider {
    static var previews: some View {
        let ind = IndexIdentifier(id: 1, indexTitle: "IDK")
        let ind2 = IndexIdentifier(id: 3, indexTitle: "IDK")

        
        IndexButton(ids: [ind, ind2],deviceWidth: 393, deviceHeight: 759)
    }
}
