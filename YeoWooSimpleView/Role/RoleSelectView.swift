//
//  RoleSelectView.swift
//  YeoWooSimpleView
//
//  Created by 정회승 on 2023/07/14.
//

import SwiftUI

struct RoleSelectView: View {
    
    @Environment(\.dismiss) var dismiss
    @State var selectingFox = false
    @State var progressBar = false
    
    //그리드 아이템
    private let gridItems: [GridItem] = [
        .init(.flexible(), spacing: 2),
        .init(.flexible(), spacing: 2),
        .init(.flexible(), spacing: 2)
    ]


    
    
    var body: some View {
        NavigationView {
            VStack {
                ProgressBar(progress: $progressBar)
                    .offset(x: 25)
                    .frame(height: 20)
                VStack(alignment: .leading){
                    Text("여행에서 맡고 싶은 역할을")
                    Text("선택해주세요")
                }
                .font(.system(size: 24, weight: .bold, design: .default))
                .foregroundColor(.black)
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.leading, 20)
                .padding(.top, 30)
                
                Spacer()
                //FoxGrid 3x2
                LazyVGrid(columns: gridItems, spacing: 30) {
                    ForEach(0..<6) { id in
                        FoxCardView(fox: foxs[id])
                    }
                }
                
                
                Spacer()


                // 버튼
                    Button{
                        //선택 완료
                        print("selecting finished")
                        
                        
                    } label: {
                        Rectangle()
                            .frame(width: UIScreen.main.bounds.width - 30, height: 54)
                            .foregroundColor(Color.mainColor)
                            .cornerRadius(10)
                            .overlay(Text("선택완료").font(.system(size: 18, weight: .bold, design: .default)).foregroundColor(Color.white))
                    }
                .padding(.bottom, 20)
            }
            .navigationTitle(Text("역할 선택하기"))
            .navigationBarTitleDisplayMode(.inline)
            .background(Color.white)
            .accentColor(.black)
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading){
                    Image(systemName: "chevron.left")
                        .opacity(0.7)
                        .imageScale(.large )
                        .onTapGesture {
                            dismiss()
                        }
                }
        }
            .onAppear {
                withAnimation(Animation.easeIn(duration: 1.0).delay(0.5)) {
                    self.progressBar = true
                }
            }

        }
    }
}

struct RoleSelectView_Previews: PreviewProvider {
    static var previews: some View {
        RoleSelectView()
    }
}
