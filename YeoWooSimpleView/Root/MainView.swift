//
//  MainView.swift
//  YeoWooSimpleView
//
//  Created by 정회승 on 2023/07/14.
//

import SwiftUI

struct MainView: View {
    
    //뷰모델로 네비게이션 관리
    @EnvironmentObject var viewModel : NavigationViewModel
    
    var body: some View {
        NavigationStack(path: $viewModel.path) {
            VStack {
                HStack {
                    Image("Title")
                        .resizable()
                        .frame(width: 100, height: 40)
                        .padding(.leading, 20)
                        .padding(.top)

                    Spacer()
                    
                    CameraButton()
                        .padding(.trailing)
                    
                    NavigationLink {
                        RoleChangeView()
                            .navigationBarBackButtonHidden()
                    } label : {
                        Image(systemName: "chevron.right.circle.fill")
                            .resizable()
                            .frame(width: 32, height: 32)
                            .foregroundColor(.unclicked)
                            .opacity(0.2)
                            .overlay(Image(systemName: "chevron.right")
                                .resizable()
                                .frame(width: 8, height: 16))
                            .fontWeight(.bold)
                        .foregroundColor(.mainColor)
                    }
                    .padding(.trailing, 20)
                .padding(.top, 100)
                }
                Spacer()
                HStack {
                    ZStack {RoundedRectangle(cornerRadius: 100)
                            .frame(width: 158, height: 76)
                            .foregroundColor(.whiteGray)
                        HStack{
                            NavigationLink{
                                NotiView()
                                    .navigationBarBackButtonHidden()
                            } label: {
                                Circle()
                                    .foregroundColor(.white)
                                    .frame(width: 48, height: 48)
                                    .shadow(radius: 20)
                                    .overlay( Image(systemName: "bell.fill")
                                        .foregroundColor(.mainColor))
                            }
                            NavigationLink(value: 1) {
                                label : do { Circle()
                                        .foregroundColor(.white)
                                        .frame(width: 48, height: 48)
                                        .shadow(radius: 20)
                                        .overlay( Image(systemName: "gear")
                                            .imageScale(.large)
                                            .foregroundColor(.mainColor))
                                }
                            }
                            .navigationDestination(for: Int.self) { _ in
                                SettingView()
                                    .navigationBarBackButtonHidden()
                            }
                        }
                    }
                    .padding(.leading, 20)
                    
                    Spacer()
                    
                    NavigationLink{
                        NewAlbumView()
                            .navigationBarBackButtonHidden()
                    } label: {
                        Image(systemName: "plus.circle.fill")
                            .resizable()
                            .frame(width: 76, height: 76)
                            .foregroundColor(.mainColor)
                            .padding(.trailing, 20)
                    }
                }
            }
            
            
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
