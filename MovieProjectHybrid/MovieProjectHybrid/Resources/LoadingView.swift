//
//  LoadingView.swift
//  MovieProjectHybrid
//
//  Created by Çağatay Eğilmez on 25.01.2026.
//

import Lottie
import UIKit

private enum Constant {

    static let animationName = "loading"
    static let animationViewSize = CGSize(width: 100, height: 100)
}

final class LoadingView: UIView {

    var isActive = false

    private let animationView: LottieAnimationView = {
        let animationView = LottieAnimationView(name: Constant.animationName)
        animationView.translatesAutoresizingMaskIntoConstraints = false
        animationView.loopMode = .loop
        return animationView
    }()

    override init(frame: CGRect) {
        super.init(frame: frame)

        setup()
    }

    @available(*, unavailable)
    required init?(coder _: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    func show(in view: UIView) {
        view.endEditing(true)

        if superview != view {
            isActive = true
            reset()
            view.addSubview(self)
            NSLayoutConstraint.activate([
                self.topAnchor.constraint(equalTo: view.topAnchor),
                self.bottomAnchor.constraint(equalTo: view.bottomAnchor),
                self.leadingAnchor.constraint(equalTo: view.leadingAnchor),
                self.trailingAnchor.constraint(equalTo: view.trailingAnchor)
            ])

            layoutIfNeeded()

            UIView.animate(
                withDuration: 0.3,
                animations: {
                    self.alpha = 1.0
                },
                completion: { _ in
                    self.animationView.play()
                })
        }
    }

    func hide(animated: Bool) {
        if superview == nil {
            return
        }

        isActive = false

        let animationDuration = animated ? 0.3 : 0.0
        UIView.animate(
            withDuration: animationDuration,
            animations: {
                self.alpha = 0.0
            },
            completion: { _ in
                self.animationView.stop()
                self.removeFromSuperview()
            })
    }

    private func reset() {
        alpha = 0.0
        if animationView.isAnimationPlaying {
            animationView.stop()
        }
    }

    private func setup() {
        translatesAutoresizingMaskIntoConstraints = false
        backgroundColor = UIColor.systemGray.withAlphaComponent(0.3)

        addSubview(animationView)
        NSLayoutConstraint.activate([
            animationView.widthAnchor.constraint(
                equalToConstant: Constant.animationViewSize.width),
            animationView.heightAnchor.constraint(
                equalToConstant: Constant.animationViewSize.height),
            animationView.centerXAnchor.constraint(equalTo: centerXAnchor),
            animationView.centerYAnchor.constraint(equalTo: centerYAnchor)
        ])
        reset()
    }
}
