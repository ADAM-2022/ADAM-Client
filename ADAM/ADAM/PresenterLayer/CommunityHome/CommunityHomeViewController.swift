//
//  CommunityHomeViewController.swift
//  ADAM
//
//  Created by Noah Park on 2023/01/24.
//

import UIKit
import SnapKit

final class CommunityHomeViewController: BaseViewController {
    
    let viewModel = CommunityHomeViewModel(PreviewPostsListUseCase(PreviewPostRepository()))
    
    private lazy var briefPostsTableView: UITableView = {
        let tableView = UITableView()
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(PreviewPostTableViewCell.self, forCellReuseIdentifier: PreviewPostTableViewCell.identifier)
        return tableView
    }()

    override func viewWillAppear(_ animated: Bool) {
        setbriefPostsTableViewLayout()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        bind(to: viewModel)
        viewModel.loadPreviewPosts()
    }
    
    private func bind(to viewModel: CommunityHomeViewModel) {
        viewModel.previewPosts.observe(on: self) { [weak self] _ in
            self?.briefPostsTableView.reloadData()
        }
        viewModel.error.observe(on: self) { [weak self] in
            self?.showError($0)
        }
    }
    
    private func showError(_ error: String) {
        print(error)
    }
}

extension CommunityHomeViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModel.previewPosts.value.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(
            withIdentifier: PreviewPostTableViewCell.identifier,
            for: indexPath) as? PreviewPostTableViewCell else { return UITableViewCell() }
        cell.titleLabel.text = viewModel.previewPosts.value[indexPath.row].title
        return cell
    }
    
    
}

private extension CommunityHomeViewController {
    func setbriefPostsTableViewLayout() {
        view.addSubview(briefPostsTableView)
        briefPostsTableView.snp.makeConstraints { make in
            make.bottom.left.right.top.equalToSuperview()
        }
    }
}

extension CommunityHomeViewController: UITableViewDelegate {}
