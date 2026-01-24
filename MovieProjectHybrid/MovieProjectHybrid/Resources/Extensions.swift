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

extension UIColor {

    /// Inits UIColor with hex value
    ///
    /// - Parameter hex: Hex value of color
    public convenience init(hex: String) {
        var cString: String = hex.trimmingCharacters(in: .whitespacesAndNewlines).uppercased()
        if cString.hasPrefix("#") {
            cString.remove(at: cString.startIndex)
        }

        guard cString.count == 6 else {
            self.init(white: 0.5, alpha: 1)
            return
        }

        var rgbValue: UInt64 = 0
        let scanner = Scanner(string: cString)
        scanner.charactersToBeSkipped = nil

        if scanner.scanHexInt64(&rgbValue) {
            let r = CGFloat((rgbValue & 0xFF0000) >> 16) / 255.0
            let g = CGFloat((rgbValue & 0x00FF00) >> 8) / 255.0
            let b = CGFloat(rgbValue & 0x0000FF) / 255.0
            self.init(red: r, green: g, blue: b, alpha: 1.0)
        } else {
            self.init(white: 0.5, alpha: 1)
        }
    }
}
