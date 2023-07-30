//
//  CameraButtonView.swift
//  Yeowoo
//
//  Created by 김용주 on 2023/07/16.
//

import SwiftUI

struct CameraButton: View {

    @Environment(\.dismiss) private var dismiss
    
    @EnvironmentObject var viewModel: CameraButtonViewModel
    
    var body: some View {
        VStack{
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
        }    }
}

struct CameraButton_Previews: PreviewProvider {
    static var previews: some View {
        CameraButton()
    }
}
