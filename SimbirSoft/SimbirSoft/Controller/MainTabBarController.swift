//
//  MainTabBarController.swift
//  SimbirSoft
//
//  Created by NaYfront on 15.07.2022.
//

import UIKit

class MainTabBarController: UITabBarController {
    private lazy var middleButton: UIButton = {
        let middleButton = UIButton()
        middleButton.layer.cornerRadius = .middleButtonDiameter / 2
        middleButton.backgroundColor = CustomColor.leaf
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
    
    func makeUI() {
        setValue(CustomTabBar(frame: tabBar.frame), forKey: "tabBar")

        tabBar.tintColor = CustomColor.leaf

        tabBar.addSubview(middleButton)
        middleButton.addSubview(heartImageView)

        NSLayoutConstraint.activate([
            middleButton.heightAnchor.constraint(equalToConstant: .middleButtonDiameter),
            middleButton.widthAnchor.constraint(equalToConstant: .middleButtonDiameter),
            
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
        middleVC.tabBarItem.setTitleTextAttributes([.foregroundColor: CustomColor.leaf], for: .selected)

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
        middleButton.backgroundColor = CustomColor.leaf
    }
}

extension MainTabBarController: UITabBarControllerDelegate {
    override func tabBar(_ tabBar: UITabBar, didSelect item: UITabBarItem) {
        let selectedIndex = self.tabBar.items?.firstIndex(of: item)
        if selectedIndex != 2 {
            middleButton.backgroundColor = .gray
        } else {
            middleButton.backgroundColor = CustomColor.leaf
        }
    }
}

private extension CGFloat {
    static let middleButtonDiameter: CGFloat = 42
}
