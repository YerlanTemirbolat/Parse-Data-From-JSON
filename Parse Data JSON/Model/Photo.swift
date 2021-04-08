//
//  Photo.swift
//  Parse Data JSON
//
//  Created by Admin on 4/8/21.
//

import Foundation

struct Photo: Codable {
  let albumId: Int
  let id: Int
  let title: String
  let url: String
  let thumbnailUrl: String
}
