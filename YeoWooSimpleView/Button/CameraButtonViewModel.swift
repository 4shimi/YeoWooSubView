//
//  CameraButtonViewModel.swift
//  YeoWooSimpleView
//
//  Created by 정회승 on 2023/07/27.
//

import Foundation

class CameraButtonViewModel: ObservableObject {
    
    static let shared = CameraButtonViewModel()
    
    
    @Published var showModal: Bool = false
    
    func goCamera() async {
        DispatchQueue.main.async {
            print("====camera on====")
            self.showModal = true
            print(self.showModal)
        }
    }
}
