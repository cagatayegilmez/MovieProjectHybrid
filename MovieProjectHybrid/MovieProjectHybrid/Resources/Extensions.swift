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
    func addSwiftUIView<T: View>(_ swiftUIView: T) -> UIView? {
        let hostingViewController = UIHostingController(rootView: swiftUIView)
        guard let rootView = hostingViewController.view else {
            return nil
        }

        rootView.translatesAutoresizingMaskIntoConstraints = false
        rootView.backgroundColor = .systemBackground

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

extension Color {

    /// Inits Color with hex value
    ///
    /// - Parameter hex: Hex value of color
    init(hex: String) {
        var cString = hex.trimmingCharacters(in: .whitespacesAndNewlines).uppercased()
        if cString.hasPrefix("#") { cString.removeFirst() }
        guard cString.count == 6 else {
            self = Color(.systemGray)
            return
        }
        var rgbValue: UInt64 = 0
        Scanner(string: cString).scanHexInt64(&rgbValue)
        self = Color(
            red: Double((rgbValue & 0xFF0000) >> 16) / 255.0,
            green: Double((rgbValue & 0x00FF00) >> 8) / 255.0,
            blue: Double(rgbValue & 0x0000FF) / 255.0
        )
    }
}

struct ScrollOffsetPreferenceKey: PreferenceKey {
    static var defaultValue: CGFloat = 0

    static func reduce(value: inout CGFloat, nextValue: () -> CGFloat) {
        value = nextValue()
    }
}

extension View {

    /// Detects when scroll view scrolled to bottom
    ///
    /// - Parameter action: Completion block of scroll bottomed
    /// - Returns: View of scrolling observed.
    func onScrollToBottom(_ action: @escaping () -> Void) -> some View {
        self.background(
            GeometryReader { geo in
                Color.clear
                    .preference(key: ScrollOffsetPreferenceKey.self,
                                value: geo.frame(in: .global).maxY)
            }
        )
        .onPreferenceChange(ScrollOffsetPreferenceKey.self) { maxY in
            let screenHeight = UIScreen.main.bounds.height
            if maxY < screenHeight + 20 {
                action()
            }
        }
    }
}
