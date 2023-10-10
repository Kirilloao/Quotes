//
//  SceneDelegate.swift
//  Quotes
//
//  Created by Kirill Taraturin on 10.10.2023.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?

    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        guard let windowScene = (scene as? UIWindowScene) else { return }
        
        window = UIWindow(windowScene: windowScene)
        let startVC = UINavigationController(rootViewController: MainViewController())
        window?.rootViewController = startVC
        window?.makeKeyAndVisible()
    }
}

