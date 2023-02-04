//
//  BaseViewController.swift
//  ADAM
//
//  Created by Noah Park on 2023/01/26.
//

import UIKit
import SnapKit
import Alamofire

class BaseViewController: UIViewController {
    
    //MARK: init
    
    init() {
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    //MARK: View Life Cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .white
        setUpLayout()
        configure()
        // Do any additional setup after loading the view.
    }
    
    func setUpLayout() {
        
    }
    
    func configure() {
        
    }
    
    func setNavigationBar() {
        guard let navigationBar = navigationController?.navigationBar else { return }
        let navigationAppearance = UINavigationBarAppearance()
        navigationAppearance.configureWithDefaultBackground()
        navigationAppearance.titleTextAttributes = [.font: UIFont.systemFont(ofSize: 20, weight: .medium)]
        navigationAppearance.titleTextAttributes = [.foregroundColor: UIColor.black]
        navigationBar.compactAppearance = navigationAppearance
        navigationBar.standardAppearance = navigationAppearance
        navigationBar.scrollEdgeAppearance = navigationAppearance
    }
}


extension BaseViewController: UIGestureRecognizerDelegate {
    func gestureRecognizerShouldBegin(_ gestureRecognizer: UIGestureRecognizer) -> Bool {
        guard let viewControllersCount = navigationController?.viewControllers.count else { return false }
        return viewControllersCount > 1
    }
}
