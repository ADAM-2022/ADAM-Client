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
    
    private lazy var backButton = UIButton(frame: .zero)
    
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
    
    func setBackButtonAction() {
            backButton.addTarget(self, action: #selector(backButtonPressed), for: .touchUpInside)
        }
        
        @objc func backButtonPressed(_ sender: UIButton) {
            self.navigationController?.popViewController(animated: true)
        }

}
private extension BaseViewController {
    func setBackButtonLayout() {
        view.addSubview(backButton)
        backButton.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(60)
            make.left.equalToSuperview().offset(10)
        }
    }
    //TODO: 추후 Design Components 도입 시 대체될 수 있음
    func configureBackButton() {
        let imageConfig = UIImage.SymbolConfiguration(pointSize: 20, weight: .medium)
        backButton.setImage(UIImage(systemName: "chevron.backward", withConfiguration: imageConfig), for: .normal)
        backButton.tintColor = .black
    }
}

extension BaseViewController: UIGestureRecognizerDelegate {
    func gestureRecognizerShouldBegin(_ gestureRecognizer: UIGestureRecognizer) -> Bool {
        guard let viewControllersCount = navigationController?.viewControllers.count else { return false }
        return viewControllersCount > 1
    }
}
