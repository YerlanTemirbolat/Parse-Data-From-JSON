//
//  Utility.swift
//  Parse Data JSON
//
//  Created by Admin on 4/8/21.
//

import UIKit

import UIKit

extension UIView {
  func fill(in view: UIView) {
    translatesAutoresizingMaskIntoConstraints = false
    view.addSubview(self)
    let guide: UILayoutGuide
    if #available(iOS 11.0, *) {
      guide = view.safeAreaLayoutGuide
    } else {
      guide = view.layoutMarginsGuide
    }
    let constraints = [
      topAnchor.constraint(equalTo: guide.topAnchor),
      bottomAnchor.constraint(equalTo: guide.bottomAnchor),
      leadingAnchor.constraint(equalTo: guide.leadingAnchor),
      trailingAnchor.constraint(equalTo: guide.trailingAnchor)
    ]
    NSLayoutConstraint.activate(constraints)
  }


  func fill(in view: UIView, leadingMargin leading: CGFloat) {
    translatesAutoresizingMaskIntoConstraints = false
    view.addSubview(self)
    let guide: UILayoutGuide
    if #available(iOS 11.0, *) {
      guide = view.safeAreaLayoutGuide
    } else {
      guide = view.layoutMarginsGuide
    }
    let constraints = [
      topAnchor.constraint(equalTo: guide.topAnchor),
      bottomAnchor.constraint(equalTo: guide.bottomAnchor),
      leadingAnchor.constraint(equalTo: guide.leadingAnchor, constant: leading),
      trailingAnchor.constraint(equalTo: guide.trailingAnchor)
    ]
    NSLayoutConstraint.activate(constraints)
  }
}

