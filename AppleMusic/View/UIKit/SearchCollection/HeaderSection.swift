//
//  HeaderSection.swift
//  AppleMusic
//
//  Created by Kirill on 12.01.2022.
//

import UIKit

class HeaderSection: UICollectionReusableView {
    
    // MARK: - Properties
    
    static let identifier = "HeaderSection"
    
    private let header: UILabel = {
        let label = UILabel()
        
        label.font = .systemFont(ofSize: Metric.fontOfSize, weight: .bold)
        label.textColor = .black
        label.text = "Поиск по категориям"
        
        return label
    }()
    
    private let separator: UIView = {
        let sep = UIView()
        
        sep.backgroundColor = .secondaryLabel
        
        return sep
    }()
    
    // MARK: - Initial
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setupHierarchy()
        setupLayout()
        setupView()
    }
    
    required init?(coder: NSCoder) {
        fatalError()
    }
    
    // MARK: - Settings
    
    private func setupHierarchy() {
        addSubview(header)
        addSubview(separator)
    }
    
    private func setupLayout() {
        separator.translatesAutoresizingMaskIntoConstraints = false
        separator.topAnchor.constraint(equalTo: topAnchor).isActive = true
        separator.trailingAnchor.constraint(equalTo: trailingAnchor, constant: Metric.trailingAnchor).isActive = true
        separator.leadingAnchor.constraint(equalTo: leadingAnchor, constant: Metric.leadingAnchor).isActive = true
        separator.heightAnchor.constraint(equalToConstant: Metric.heighеSeparator).isActive = true
        
        header.translatesAutoresizingMaskIntoConstraints = false
        header.leadingAnchor.constraint(equalTo: leadingAnchor, constant: Metric.leadingAnchor).isActive = true
        header.bottomAnchor.constraint(equalTo: bottomAnchor).isActive = true
    }
    
    private func setupView() {
        backgroundColor = .clear
    }
    
    // MARK: - Constants for constraints

    enum Metric {
        static let trailingAnchor: CGFloat = -20
        static let leadingAnchor: CGFloat = 20
        static let fontOfSize: CGFloat = 20
        static let heighеSeparator: CGFloat = 0.3
    }
}
