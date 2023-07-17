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

    
}

let users = [
        User(username: "시저", nickname: "Caesar", profileImageUrl: "Caesar" ),
        User(username: "노바", nickname: "Nova", profileImageUrl: "Nova"),
        User(username: "제이미", nickname: "Jamie", profileImageUrl: "Jamie"),
        User(username: "핀", nickname: "Pin", profileImageUrl: "Pin"),
        User(username: "지구", nickname: "Jigu", profileImageUrl: "Jigu"),
        User(username: "아지", nickname: "Azhy", profileImageUrl: "Azhy"),
        User(username: "썬데이", nickname: "Sunday", profileImageUrl: "Sunday"),
]
