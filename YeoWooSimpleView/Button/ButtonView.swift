//
//  CameraButtonView.swift
//  Yeowoo
//
//  Created by 김용주 on 2023/07/16.
//

import SwiftUI

struct CameraButton: View {

    @State private var showModal = false

    @Environment(\.dismiss) private var dismiss
    
    var body: some View {
        Button(action: {
            UIView.setAnimationsEnabled(false)
            showModal = true
        }) {
            ZStack {
                Circle()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 100 ,height: 100)
                    .foregroundColor(.black)
                
                Image(systemName: "camera.fill")
                    .resizable()
                    .frame(width: 60 ,height: 40)
                    .aspectRatio(contentMode: .fit)
                    .foregroundColor(.gray)
            }
        }.fullScreenCover(isPresented: $showModal) {
            NavigationView {
                VStack {
                    HStack {
                        Button(action: {
                            showModal = false
                        }) {
                            Image(systemName: "chevron.backward")
                                .resizable()
                                .frame(width: 100, height: 100)
                                .aspectRatio(contentMode: .fit)
                        }
                        Spacer()
                    }
                }
            }
        }
        .onAppear{
            UIView.setAnimationsEnabled(true)
        }
    }
}

struct CameraButton_Previews: PreviewProvider {
    static var previews: some View {
        CameraButton()
    }
}
