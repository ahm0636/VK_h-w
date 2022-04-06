//
//  Model.swift
//  VK
//
//  Created by Aurelica Apps iOS Dev - 1 on 26/03/22.
//

import Foundation
import UIKit


enum ProfileType: String, CaseIterable, Identifiable {
    var id: String { self.rawValue }

    case beginner = "Beginner"
    case intermediate = "Intermediate"
    case advanced = "Advanced"

}

    // MARK: - Group Model
struct Group {
    let id: String
    let groupDescription: String
    let numberOfMembers: Int
    let name: String
    let isPrivate: Bool
    let photo: [Photo]

}

extension Group {
    static var allGroups: [Group] = [
        Group(id: "1", groupDescription: "first group", numberOfMembers: 23, name: "RGB Group", isPrivate: true, photo: [Photo(photo: "", name: "it is a photo")]),
        Group(id: "2", groupDescription: "second group", numberOfMembers: 23, name: "Style Group", isPrivate: true, photo: [Photo(photo: "3 photo", name: "it is a photo")]),
        Group(id: "3", groupDescription: "third group", numberOfMembers: 23, name: "Rock Group", isPrivate: true, photo: [Photo(photo: "2 photo", name: "it is a photo")]),
        Group(id: "4", groupDescription: "fourth group", numberOfMembers: 23, name: "ST Group", isPrivate: true, photo: [Photo(photo: "1 photo", name: "it is a photo")])
    ]
}
    // MARK: - Photo model
struct Photo {
    let photo: String
    let name: String
}

    // MARK: - User model
struct User {
    let name: String
    let profileType: ProfileType.RawValue
    let id = UUID()
    let photo: [Photo]
    let avatar: String
    let groups: [Group]
    var age: Int
    let surname: String
    let aboutMe: String
}

extension User {
    static let allMates: [User] = [
        User(name: "Susan", profileType: "Advanced", photo: [Photo(photo: "https://www.drivelinebaseball.com/wp-content/uploads/2020/12/push-up-2.jpg",
                                                                   name: "ph")], avatar: "VKimage", groups: [Group(id: "1", groupDescription: "Susan's group", numberOfMembers: 23, name: "BBC", isPrivate: true, photo: [Photo(photo: "sherry-christian-8Myh76_3M2U-unsplash.jpg", name: "ph")])], age: 34, surname: "Su", aboutMe: "News"),
        User(name: "Rock", profileType: "Advanced", photo: [Photo(photo: "heart", name: "ph")], avatar: "heart", groups: [Group(id: "2", groupDescription: "Rock's group", numberOfMembers: 23, name: "2", isPrivate: true, photo: [Photo(photo: "BBC photo", name: "ph")])], age: 34, surname: "Su", aboutMe: "News"),
        User(name: "Swift", profileType: "Advanced", photo: [Photo(photo: "first photo", name: "ph")], avatar: "VKimage", groups: [Group(id: "3", groupDescription: "Swift's group", numberOfMembers: 23, name: "4", isPrivate: true, photo: [Photo(photo: "second photo", name: "ph")])], age: 34, surname: "Su", aboutMe: "News"),
        User(name: "Doks", profileType: "Advanced", photo: [Photo(photo: "fourth photo", name: "ph")], avatar: "heart", groups: [Group(id: "4", groupDescription: "Doks group", numberOfMembers: 23, name: "B5", isPrivate: true, photo: [Photo(photo: "BBC photo", name: "ph")])], age: 34, surname: "Su", aboutMe: "News"),
        User(name: "Karl", profileType: "Advanced", photo: [Photo(photo: "fourth photo", name: "ph")], avatar: "heart", groups: [Group(id: "5", groupDescription: "Karl's group", numberOfMembers: 23, name: "B5", isPrivate: true, photo: [Photo(photo: "BBC photo", name: "ph")])], age: 34, surname: "Su", aboutMe: "News"),
        User(name: "Rocky", profileType: "Advanced", photo: [Photo(photo: "fourth photo", name: "ph")], avatar: "VKimage", groups: [Group(id: "6", groupDescription: "Rocky's group", numberOfMembers: 23, name: "B5", isPrivate: true, photo: [Photo(photo: "BBC photo", name: "ph")])], age: 34, surname: "Su", aboutMe: "News"),
        User(name: "KOSTAS", profileType: "Advanced", photo: [Photo(photo: "fourth photo", name: "ph")], avatar: "heart", groups: [Group(id: "7", groupDescription: "Kos group", numberOfMembers: 23, name: "B5", isPrivate: true, photo: [Photo(photo: "BBC photo", name: "ph")])], age: 34, surname: "Su", aboutMe: "News")
    ]
}




