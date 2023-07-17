//
//  FoxCardView.swift
//  YeoWooSimpleView
//
//  Created by 정회승 on 2023/07/17.
//

import SwiftUI


struct FoxCardView: View {
    
    let fox : Fox
    @State var selectedFox : Bool = false
    
    var body: some View {
        VStack{
            ZStack {
                RoundedRectangle(cornerRadius: 10)
                    .frame(width: 108, height: 108)
                    .foregroundColor(selectedFox ? .clicked : .whiteGray)
                    .overlay {
                        RoundedRectangle(cornerRadius: 10)
                            .stroke(lineWidth: 1.5)
                            .foregroundColor(selectedFox ? .mainColor : .clear)
                    }
                
                    
                
                VStack {
                    Image(fox.foxImage)
                        .resizable()
                        .scaledToFill()
                    .frame(width: 46, height: 48)
                    Text(fox.foxName)
                }
            }
            .onTapGesture {
                selectedFox.toggle()
                //선택된 여우 데이터(true 나와야 정상)
                print("\(fox.foxName) is selected: \(selectedFox)")
            }
            
            Text(fox.description)
                .font(.system(size: 12, weight: .medium, design: .default))
                .multilineTextAlignment(.center)
                .foregroundColor(.alarmGray)
            
            
        }
    }
}

struct FoxCardView_Previews: PreviewProvider {
    static var previews: some View {
        FoxCardView(fox: foxs[0])
    }
}
