//
//  CategorySearchCollectionViewCell.swift
//  AppleMusic
//
//  Created by Kirill on 12.01.2022.
//

import UIKit

class CategorySearchCollectionViewCell: UICollectionViewCell {
    
    // MARK: - Properties
    
    static let identifier = "CategorySearchCollectionViewCell"
    
    private let imageView: UIImageView = {
        let image = UIImageView()
        
        image.contentMode = .scaleAspectFill
        image.clipsToBounds = true
        image.layer.cornerRadius = Metric.cornerRadius
        image.alpha = Metric.alphaImage
        
        return image
    }()
    
    private let title: UILabel = {
        let title = UILabel()
        
        title.font = .systemFont(ofSize: Metric.fontSize, weight: .bold)
        title.textColor = .white
        title.numberOfLines = Metric.numberOfLines
        
        return title
    }()
    
    // MARK: - Initial
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setupHierarchy()
        setupLayout()
    }
    
    required init?(coder: NSCoder) {
        fatalError()
    }
    
    // MARK: - Settings
    
    private func setupHierarchy() {
        contentView.addSubview(imageView)
        contentView.addSubview(title)
    }
    
    private func setupLayout() {
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.widthAnchor.constraint(equalTo: contentView.widthAnchor).isActive = true
        imageView.heightAnchor.constraint(equalTo: contentView.heightAnchor).isActive = true
        imageView.centerXAnchor.constraint(equalTo: contentView.centerXAnchor).isActive = true
        imageView.centerYAnchor.constraint(equalTo: contentView.centerYAnchor).isActive = true
        
        title.translatesAutoresizingMaskIntoConstraints = false
        title.widthAnchor.constraint(equalToConstant: Metric.widthLabel).isActive = true
        title.leadingAnchor.constraint(equalTo: imageView.leadingAnchor, constant: Metric.leadingAnchor).isActive = true
        title.bottomAnchor.constraint(equalTo: imageView.bottomAnchor, constant: Metric.bottomAnchor).isActive = true
    }
    
    // MARK: - Configurate
    
    func configure(with model: SearchSectionCell) {
        imageView.image = UIImage(named: model.nameIconImage)
        title.text = model.title
    }
    
    // MARK: - Constants for constraints
    
    enum Metric {
        static let widthLabel: CGFloat = (UIScreen.main.bounds.width - 50) / 2 - leadingAnchor
        static let leadingAnchor: CGFloat = 15
        static let bottomAnchor: CGFloat = -15
        static let cornerRadius: CGFloat = 10
        static let fontSize: CGFloat = 13
        static let alphaImage: CGFloat = 0.9
        static let numberOfLines = 2
    }
}
