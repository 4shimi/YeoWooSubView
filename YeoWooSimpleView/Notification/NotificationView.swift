//
//  NotificationView.swift
//  YeoWooSimpleView
//
//  Created by 정회승 on 2023/07/14.
//

import SwiftUI

struct NotificationView: View {
    @Environment(\.dismiss) var dismiss
    @State private var deletingAll = false

    var body: some View {
        NavigationStack{
            ScrollView{
                
                //받은 날짜 표시

                Text("2023. 07. 07")
                    .modifier(SubTitleFont())

                NotiCardView()
            }
            .navigationTitle("알림")
            .navigationBarTitleDisplayMode(.inline)
            .background(Color.white)
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading){
                    Image(systemName: "chevron.left")
                        .opacity(0.7)
                        .imageScale(.large )
                        .onTapGesture {
                            dismiss()
                        }
                }
                ToolbarItem(placement: .navigationBarTrailing){
                    Menu {
                        Button(role: .destructive, action: {
                            print ("delete all")
                        }) {
                                Label("전체 삭제", systemImage: "trash")
                                .foregroundColor(.warningRed)
                            }
                        
                            } label: {
                                Label("", systemImage: "ellipsis")
                                    .rotationEffect(Angle(degrees: 90))
                                    .foregroundColor(.gray)
                                    .opacity(0.7)
                            }
                }
            }
        }
        
    }
}

struct NotificationView_Previews: PreviewProvider {
    static var previews: some View {
        NotificationView()
    }
}
