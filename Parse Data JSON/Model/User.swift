//
//  User.swift
//  Parse Data JSON
//
//  Created by Admin on 4/8/21.
//

import Foundation

struct User: Codable {
  let id: Int
  let name: String
  let userName: String
  let email: String
  let website: String
  let company: Company

  enum CodingKeys: String, CodingKey {
    case id
    case name
    case userName = "username"
    case email
    case website
    case company
  }
}

struct Company: Codable {
  let name: String
  let catchPhrase: String
  let bs: String
}
