//
//  BackToolBarModifier.swift
//  YeoWooSimpleView
//
//  Created by 정회승 on 2023/07/17.
//

import SwiftUI

struct BackToolBarModifier: ViewModifier {
    @Environment(\.dismiss) var dismiss
    
    func body(content: Content) -> some View {
        content
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading){
                    Image(systemName: "chevron.left")
                        .opacity(0.3)
                        .imageScale(.large )
                        .onTapGesture {
                            dismiss()
                        }
                }
            }
    }
}


