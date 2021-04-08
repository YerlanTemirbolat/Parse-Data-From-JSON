//
//  ImageDownloader.swift
//  Parse Data JSON
//
//  Created by Admin on 4/8/21.
//

import Foundation
import UIKit

final class ImageDownloader {
  private let cache: LocalCache<String, Data>
  private let session: URLSession

  init() {
    cache = LocalCache()
    session = URLSession(configuration: .default)
  }

  func getImageFrom(_ urlString: String, completion: @escaping (Data?) -> Void) {
    if let cachedData = cache[urlString] {
      completion(cachedData)
    } else {
      guard let url = URL(string: urlString) else { return completion(nil) }

      let task = session.dataTask(with: url) { [weak self] (data, _, _) in
        guard let data = data else {
          return completion(nil)
        }

        self?.cache[urlString] = data
        completion(data)
      }
      task.resume()
    }
  }
}
