//
//  PlaceholderDataType.swift
//  Parse Data JSON
//
//  Created by Admin on 4/8/21.
//

import Foundation

enum PlaceholderDataType {
  case users
  case albums(Int)
  case photos(Int)
}

protocol DataTypeToURLTranslatorProtocol {
  func url(for placeholderDataType: PlaceholderDataType) -> URL
}

class DataTypeToURLTranslator: DataTypeToURLTranslatorProtocol {
  static let rootUrl = "https://jsonplaceholder.typicode.com/"

  func url(for placeholderDataType: PlaceholderDataType) -> URL {
    let urlString: String
    switch placeholderDataType {
    case .users:
      urlString = DataTypeToURLTranslator.rootUrl + "users/"
    case let .albums(userId):
      urlString = DataTypeToURLTranslator.rootUrl + "users/\(userId)/albums"
    case let .photos(albumId):
      urlString = DataTypeToURLTranslator.rootUrl + "albums/\(albumId)/photos"
    }
    guard let url = URL(string: urlString) else {
      fatalError("Invalid URL")
    }
    return url
  }
}
