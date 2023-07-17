//
//  ProgressBar.swift
//  YeoWooSimpleView
//
//  Created by 정회승 on 2023/07/17.
//

import SwiftUI

struct ProgressBar: View {
    @Binding var progress: Bool

    var body: some View {
        GeometryReader { geometry in
            ZStack(alignment: .leading) {
                Rectangle().foregroundColor(Color.mainColor.opacity(0.1))
                    .frame(width: geometry.size.width - 50,height: 3)

                HStack(spacing: 0) {
                    Rectangle()
                        .frame(width: (geometry.size.width - 50)/2, height: 3)
                        .foregroundColor(.mainColor)
                    
                    Rectangle()
                        .foregroundColor(Color.mainColor)
                        .frame(width: progress ? (geometry.size.width - 50)/2 : 0, height: 3)
                    
                }
            }
                    .padding(.top, 15)

        }    }
}

struct ProgressBar_Previews: PreviewProvider {
    static var previews: some View {
        ProgressBar(progress: .constant(true))
    }
}
