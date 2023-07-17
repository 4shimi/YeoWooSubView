//
//  NotifcationCardView.swift
//  YeoWooSimpleView
//
//  Created by 정회승 on 2023/07/14.
//

import SwiftUI

struct NotiCardView: View {
    @State var dayNotiNum: Int = 1
    let travel : Travel
    
    //NotiCardView생성날짜 저장

    
    var body: some View {
        
        VStack {
            Text(travel.Date)
                .font(.system(size: 18, weight: .bold, design: .default))
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.leading, 20)
            HStack{
                    NotiCardContentsView(travel: travel)
                }
                .modifier(CardViewModifier(height: CGFloat(66 * dayNotiNum)))
            .accentColor(.black)
        }
    }
}

struct NotiCardView_Previews: PreviewProvider {
    static var previews: some View {
        NotiCardView(dayNotiNum: 1, travel: travels[0])
    }
}
