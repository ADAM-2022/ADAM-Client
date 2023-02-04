//
//  PreviewPostTableViewCell.swift
//  ADAM
//
//  Created by Noah Park on 2023/01/28.
//

import UIKit

final class PreviewPostTableViewCell: UITableViewCell {
    static var identifier: String {
        return String(describing: Self.self)
    }
    
    lazy var titleLabel: UILabel = {
        let label = UILabel()
        label.font = .systemFont(ofSize: 20, weight: .bold)
        label.textColor = .label
        return label
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setAttributes()
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

private extension PreviewPostTableViewCell {
    
    func setAttributes() {
        setTitleLabelLayout()
    }
    
    func setTitleLabelLayout() {
        self.addSubview(titleLabel)
        titleLabel.snp.makeConstraints { make in
            make.centerY.equalToSuperview()
            make.leadingMargin.equalTo(20)
        }
    }
}





extension PreviewPostTableViewCell {
    override func awakeFromNib() {
        super.awakeFromNib()
    }
}
