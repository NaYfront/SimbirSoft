//
//  MainTabBarController.swift
//  SimbirSoft
//
//  Created by NaYfront on 15.07.2022.
//

import UIKit

class MainTabBarController: UITabBarController {

    private let middleButtonDiameter: CGFloat = 42

    private let redColor: UIColor = UIColor(red: 254.0 / 255.0, green: 116.0 / 255.0, blue: 96.0 / 255.0, alpha: 1.0)
    private let greenColor: UIColor = UIColor(red: 102.0 / 255.0, green: 166.0 / 255.0, blue: 54.0 / 255.0, alpha: 1.0)

    private lazy var middleButton: UIButton = {
        let middleButton = UIButton()
        middleButton.layer.cornerRadius = middleButtonDiameter / 2
        middleButton.backgroundColor = UIColor(named: "leaf")
        middleButton.translatesAutoresizingMaskIntoConstraints = false
        
        middleButton.addTarget(self, action: #selector(didPressMiddleButton), for: .touchUpInside)
        
        return middleButton
    }()
    
    private lazy var heartImageView: UIImageView = {
        let heartImageView = UIImageView()
        heartImageView.image = UIImage(systemName: "heart.fill")
        heartImageView.tintColor = .white
        heartImageView.translatesAutoresizingMaskIntoConstraints = false
        return heartImageView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        makeUI()
    }
    
    private func makeUI() {
        
        tabBar.addSubview(middleButton)
        middleButton.addSubview(heartImageView)

        NSLayoutConstraint.activate([
            middleButton.heightAnchor.constraint(equalToConstant: middleButtonDiameter),
            middleButton.widthAnchor.constraint(equalToConstant: middleButtonDiameter),
            
            middleButton.centerXAnchor.constraint(equalTo: tabBar.centerXAnchor),
            middleButton.topAnchor.constraint(equalTo: tabBar.topAnchor, constant: -10)
        ])

        NSLayoutConstraint.activate([
            heartImageView.heightAnchor.constraint(equalToConstant: 15),
            heartImageView.widthAnchor.constraint(equalToConstant: 18),
            
            heartImageView.centerXAnchor.constraint(equalTo: middleButton.centerXAnchor),
            heartImageView.centerYAnchor.constraint(equalTo: middleButton.centerYAnchor)
        ])
        
        let firstVC = UIViewController()
        firstVC.tabBarItem.title = "Новости"
        firstVC.tabBarItem.image = UIImage(systemName: "list.bullet")
        
        let secondVC = UIViewController()
        secondVC.tabBarItem.title = "Поиск"
        secondVC.tabBarItem.image = UIImage(systemName: "magnifyingglass")

        let middleVC = UINavigationController(rootViewController: ViewController())
        middleVC.tabBarItem.title = "Помочь"
        middleVC.tabBarItem.setTitleTextAttributes([.foregroundColor: UIColor(named: "leaf") ?? .white], for: .selected)

        let fourthVC = UIViewController()
        fourthVC.tabBarItem.title = "История"
        fourthVC.tabBarItem.image = UIImage(systemName: "clock.arrow.circlepath")
        
        let fifthVC = UIViewController()
        fifthVC.tabBarItem.title = "Профиль"
        fifthVC.tabBarItem.image = UIImage(systemName: "person.circle")

        viewControllers = [firstVC, secondVC, middleVC, fourthVC, fifthVC]
        
        self.selectedIndex = 2
    }
    
    @objc
    private func didPressMiddleButton() {
        selectedIndex = 2
        middleButton.backgroundColor = greenColor
    }
}

extension MainTabBarController: UITabBarControllerDelegate {
    override func tabBar(_ tabBar: UITabBar, didSelect item: UITabBarItem) {
        let selectedIndex = self.tabBar.items?.firstIndex(of: item)
        if selectedIndex != 2 {
            middleButton.backgroundColor = redColor
        } else {
            middleButton.backgroundColor = greenColor
        }
    }
}
