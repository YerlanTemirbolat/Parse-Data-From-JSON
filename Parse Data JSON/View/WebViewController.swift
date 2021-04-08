//
//  WebViewController.swift
//  Parse Data JSON
//
//  Created by Admin on 4/8/21.
//

import UIKit
import WebKit

class WebViewController: UIViewController {

  lazy var webView: WKWebView = {
    let webConfiguration = WKWebViewConfiguration()
    let webView = WKWebView(frame: .zero, configuration: webConfiguration)
    webView.navigationDelegate = self
    webView.uiDelegate = self
    webView.fill(in: view)
    return webView
  }()

  let url: String

  init(url: String) {
    self.url = url
    super.init(nibName: nil, bundle: nil)
  }

  required init?(coder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }

  override func viewDidLoad() {
    super.viewDidLoad()

    if let actualURL = URL(string: url) {
      let request = URLRequest(url: actualURL)
      webView.load(request)
    }
  }
}

extension WebViewController: WKNavigationDelegate, WKUIDelegate {

}
