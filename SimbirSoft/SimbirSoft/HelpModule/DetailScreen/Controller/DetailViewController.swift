//
//  DetailViewController.swift
//  SimbirSoft
//
//  Created by NaYfront on 28.07.2022.
//

import UIKit

class DetailViewController: UIViewController {
    // MARK: - Properties
    private let event: Event
    private lazy var mainView = DetailView()
    
    // MARK: - Initializers
    init(event: Event) {
        self.event = event
        
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configure()
    }
    
    override func loadView() {
        mainView.setupViews(event: event)
        view = mainView
    }
    
    // MARK: - Private Functions
   
    private func configure() {
        self.tabBarController?.tabBar.isHidden = true
        
        let shareButton = UIBarButtonItem(image: #imageLiteral(resourceName: "iconShare"), style: .plain, target: self, action: nil)
        shareButton.tintColor = .white

        navigationItem.rightBarButtonItem = shareButton
    }
}
