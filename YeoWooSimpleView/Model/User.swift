//
//  User.swift
//  YeoWooSimpleView
//
//  Created by 정회승 on 2023/07/17.
//

import Foundation

struct User: Identifiable, Hashable, Codable {
    let id: String
    var username: String
    var nickname: String
//    var mission: String?
    var profileImageUrl: String?
//    let password: String
    
}

extension User {
    static var MOCK_USERS: [User] = [
        .init(id: NSUUID().uuidString, username: "시저", nickname: "Caesar", profileImageUrl: "Caesar" ),
        .init(id: NSUUID().uuidString, username: "노바", nickname: "Nova", profileImageUrl: "Nova"),
        .init(id: NSUUID().uuidString, username: "제이미", nickname: "Jamie", profileImageUrl: "Jamie"),
        .init(id: NSUUID().uuidString, username: "핀", nickname: "Pin", profileImageUrl: "Pin"),
        .init(id: NSUUID().uuidString, username: "지구", nickname: "Jigu", profileImageUrl: "Jigu"),
        .init(id: NSUUID().uuidString, username: "아지", nickname: "Azhy", profileImageUrl: "Azhy"),
    ]
}
