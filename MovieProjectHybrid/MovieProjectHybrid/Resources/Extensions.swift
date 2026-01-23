//
//  Extensions.swift
//  MovieProjectHybrid
//
//  Created by Çağatay Eğilmez on 23.01.2026.
//

import SwiftUI
import UIKit

extension UIViewController {

    @discardableResult
    func addSwiftUIContentView<T: View>(_ contentView: T, isTransparent: Bool = false) -> UIView? {
        let hostingViewController = UIHostingController(rootView: contentView)
        guard let rootView = hostingViewController.view else {
            return nil
        }

        rootView.translatesAutoresizingMaskIntoConstraints = false
        if isTransparent {
            rootView.isOpaque = false
            rootView.backgroundColor = .clear
        }

        view.addSubview(rootView)
        NSLayoutConstraint.activate([
            rootView.topAnchor.constraint(equalTo: view.topAnchor),
            rootView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            rootView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            rootView.trailingAnchor.constraint(equalTo: view.trailingAnchor)
        ])

        addChild(hostingViewController)
        hostingViewController.didMove(toParent: self)

        return rootView
    }
}
