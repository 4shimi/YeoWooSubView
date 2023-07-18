//
//  FindFriendView.swift
//  YeoWooSimpleView
//
//  Created by 정회승 on 2023/07/18.
//

import SwiftUI

struct FindFriendView: View {

    @Environment(\.dismiss) var dismiss


    var body: some View {
        VStack{
            Text("친구찾기")
        }
        .navigationTitle(Text("친구 초대하기"))
        .navigationBarTitleDisplayMode(.inline)
        .background(.white)
        .accentColor(.black)
        
    }
}

struct FindFriendView_Previews: PreviewProvider {
    static var previews: some View {
        FindFriendView()
    }
}
