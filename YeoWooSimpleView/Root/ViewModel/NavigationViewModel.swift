//
//  NavigationViewModel.swift
//  YeoWooSimpleView
//
//  Created by 정회승 on 2023/07/26.
//

import SwiftUI


class NavigationViewModel : ObservableObject {
    static let shared = NavigationViewModel()
    
    @Published var path: NavigationPath = NavigationPath()
    
    func goRoot() async {
        DispatchQueue.main.async {
            print(self.path.count)
            print(self.path)
            
            for _ in 0..<self.path.count {
                self.path.removeLast()
            }
        }
    }
}
