//
//  SceneDelegate.swift
//  MovieProjectHybrid
//
//  Created by Çağatay Eğilmez on 19.01.2026.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?
    private var appCoordinator: AppCoordinator?

    func scene(_ scene: UIScene,
               willConnectTo session: UISceneSession,
               options connectionOptions: UIScene.ConnectionOptions) {
        guard let windowScene = (scene as? UIWindowScene) else {
            return
        }

        let window = UIWindow(windowScene: windowScene)
        let factory = DefaultAppScreenFactory()
        let coorfinator = AppCoordinator(factory: factory)
        self.appCoordinator = coorfinator

        window.rootViewController = coorfinator.navigationController
        window.makeKeyAndVisible()
        self.window = window

        coorfinator.start()
    }
}
