//
//  User.swift
//  YeoWooSimpleView
//
//  Created by 정회승 on 2023/07/17.
//

import Foundation

struct User: Identifiable {
    let id = UUID()
    var username: String
    var nickname: String
    var profileImageUrl: String
    var isSelected: Bool?
    
}

let users = [
        User(username: "시저", nickname: "Caesar", profileImageUrl: "Caesar", isSelected: nil ),
        User(username: "노바", nickname: "Nova", profileImageUrl: "Nova", isSelected: nil),
        User(username: "제이미", nickname: "Jamie", profileImageUrl: "Jamie", isSelected: nil),
        User(username: "핀", nickname: "Pin", profileImageUrl: "Pin", isSelected: nil),
        User(username: "지구", nickname: "Jigu", profileImageUrl: "Jigu", isSelected: nil),
        User(username: "아지", nickname: "Azhy", profileImageUrl: "Azhy", isSelected: nil),
        User(username: "썬데이", nickname: "Sunday", profileImageUrl: "Sunday", isSelected: nil),
        User(username: "Sunday", nickname: "Sunday", profileImageUrl: "Sunday", isSelected: nil),
        User(username: "Jamie", nickname: "Jamie", profileImageUrl: "Jamie", isSelected: nil),

]
