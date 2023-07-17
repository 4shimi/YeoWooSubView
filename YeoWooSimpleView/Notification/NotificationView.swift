//
//  NotificationView.swift
//  YeoWooSimpleView
//
//  Created by 정회승 on 2023/07/14.
//

import SwiftUI
import UIKit

struct NotificationView: View {
    @Environment(\.dismiss) var dismiss
    @State private var deletingAll = false
    @State private var deletingAlarm = false
    
    @State private var selectedIndex: Int? = nil

    var body: some View {
        NavigationStack{
            ScrollView{

                LazyVStack(spacing: 32){
                    ForEach(0..<5) { id in
                        NotiCardView(travel: travels[id])
                    }
                }
            }
            .navigationTitle("알림")
            .navigationBarTitleDisplayMode(.inline)
            .background(Color.white)
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading){
                    Image(systemName: "chevron.left")
                        .opacity(0.3)
                        .imageScale(.large )
                        .onTapGesture {
                            dismiss()
                        }
                }
                ToolbarItem(placement: .navigationBarTrailing){
                    Menu {
                        Button(role: .destructive, action: {
                            print ("delete all")
                            deletingAlarm = true
                            
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
            .alert(isPresented: $deletingAlarm) {
                Alert(
                    title: Text("알림 삭제"),
                    message: Text("알림을 정말 모두 삭제하시겠어요?"),
                    primaryButton: .destructive(Text("삭제")
                        .foregroundColor(.warningRed),
                                            action: {
                                      //삭제코드
                                                
                                    }),
                                    secondaryButton: .cancel(Text("취소"))
                )
            }
        }
        
    }
}

struct NotificationView_Previews: PreviewProvider {
    static var previews: some View {
        NotificationView()
    }
}
