//
//  FindFriendContents.swift
//  YeoWooSimpleView
//
//  Created by 정회승 on 2023/07/18.
//

import SwiftUI

struct FindFriendContents: View {
    
    let user : User
    @Binding var friendToggle: Bool
    
    var body: some View {
       HStack {
            Image(user.profileImageUrl)
                .resizable()
                .scaledToFill()
                .frame(width: 48, height: 48)
                .clipShape(Circle())
                .padding(.leading, 3 )
            
            HStack{
                VStack(alignment: .leading){
                    Text(user.username)
                        .font((.system(size: 15, weight: .regular, design: .default)))
                        .foregroundColor(.black)
                        
                    Text(user.nickname)
                        .font((.system(size: 12, weight: .semibold, design: .default)))
                        .foregroundColor(.gray)
                }
                
                Spacer()
                
                
                Button{
                    friendToggle.toggle()
                    print("\(user.username) is clicked")
                } label: {
                    Image(systemName: friendToggle ? "checkmark.circle.fill" : "circle")
                                    .imageScale(.large)
                                    .foregroundColor(friendToggle ? .mainColor : .circleGray)
                }
               
            }
        }
       .frame(width: UIScreen.width - 50)
       .padding(.vertical, 2)
    }
}


//struct FindFriendContents_Previews: PreviewProvider {
//    static var previews: some View {
//        FindFriendContents(user: users[1])
//    }
//}
