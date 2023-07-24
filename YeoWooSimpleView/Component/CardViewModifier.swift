//
//  ViewModifier.swift
//  YeoWooSimpleView
//
//  Created by 정회승 on 2023/07/14.
//

import SwiftUI


struct CardViewModifier: ViewModifier {
    //default 값 66 설정
    var height: CGFloat = 66
    
    func body(content: Content) -> some View {
        content
            .frame(width: UIScreen.main.bounds.width - 30, height: height)
            .background(RoundedRectangle(cornerRadius: 10, style: .continuous)
                .fill(.white))
            .shadow(color: Color.circleGray.opacity(0.6), radius: 6, x: 0, y: 2)
            
//            .overlay(
//                RoundedRectangle(cornerRadius: 20)
//                    .stroke(.gray, lineWidth: 1)
//                    .opacity(0.5)
//
//            )
    }
}
    
