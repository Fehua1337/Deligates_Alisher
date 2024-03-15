//
//  HgTableViewCell.swift
//  tableViewHW
//
//  Created by Alisher Tulembekov on 11.03.2024.
//

import UIKit

class HgTableViewCell: UITableViewCell {
    
    //    static let tableCell = HgTableViewCell()
    
    let nameLabel: UILabel = {
        let table = UILabel()
        table.text = ""
        return table
    }()
    let surnameLabel: UILabel = {
        let table = UILabel()
        table.text = ""
        return table
    }()
    let houseLabel: UILabel = {
        let table = UILabel()
        table.text = ""
        return table
    }()
    let wandLabel: UILabel = {
        let label = UILabel()
        label.numberOfLines = 0 // Разрешаем неограниченное количество строк
        label.text = ""
        label.font = UIFont.systemFont(ofSize: 12)
        return label
    }()
    lazy var stackView: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .horizontal
        stackView.distribution = .fillEqually
        stackView.alignment = .fill
        stackView.spacing = 12
        return stackView
    }()
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setUp()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    func setUp() {
        
        contentView.addSubview(nameLabel)
        contentView.addSubview(surnameLabel)
        contentView.addSubview(houseLabel)
        contentView.addSubview(wandLabel)
        
        constraintSetUp() }
    
    func constraintSetUp() {
        nameLabel.snp.makeConstraints { make in
            make.top.leading.equalToSuperview().inset(12)
        }
        surnameLabel.snp.makeConstraints { make in
            make.leading.equalTo(nameLabel.snp.trailing).offset(8)
            make.top.equalToSuperview().offset(12)
        }
        houseLabel.snp.makeConstraints { make in
            make.top.equalTo(nameLabel.snp.bottom).offset(4)
            make.bottom.leading.equalToSuperview().inset(12)
        }
        wandLabel.snp.makeConstraints { make in
            make.leading.equalToSuperview().inset(200) // Левый отступ 12
            make.trailing.lessThanOrEqualToSuperview().inset(12) // Правый отступ 12
            make.centerY.equalToSuperview()
        }
    }
    func configure() {
    }
    
}
