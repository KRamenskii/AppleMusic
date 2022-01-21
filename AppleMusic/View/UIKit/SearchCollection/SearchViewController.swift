//
//  SearchViewController.swift
//  AppleMusic
//
//  Created by Kirill on 11.01.2022.
//

import UIKit
import SwiftUI

class SearchViewController: UIViewController {
    
    private var dataSearchCategory = SearchSectionCell.searchCollection
    private var collectionView: UICollectionView!
    
    // MARK: - Lifecycle

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.collectionView.dataSource = self
        self.collectionView.delegate = self
        self.collectionView.register(CategorySearchCollectionViewCell.self, forCellWithReuseIdentifier: CategorySearchCollectionViewCell.identifier)
        self.collectionView.register(HeaderSection.self, forSupplementaryViewOfKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: HeaderSection.identifier)
    }
    
    override func loadView() {
        let layout: UICollectionViewFlowLayout = UICollectionViewFlowLayout()
        layout.sectionInset = UIEdgeInsets(
            top: Metric.topPaddingItem,
            left: Metric.leftPaddingItem,
            bottom: Metric.bottomPaddingItem,
            right: Metric.rightPaddingItem)
        layout.itemSize = CGSize(width: Metric.widthItemSize, height: Metric.heightItemSize)
        layout.scrollDirection = .vertical
        collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        self.view = collectionView
    }
}

// MARK: - DataSource

extension SearchViewController: UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return dataSearchCategory.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let model = dataSearchCategory[indexPath.row]
        
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: CategorySearchCollectionViewCell.identifier, for: indexPath) as? CategorySearchCollectionViewCell else {
            fatalError()
        }
            
        cell.configure(with: model)
            
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let model = dataSearchCategory[indexPath.row]
        let page = CategorySearchView(titleNextHeader: model.title, id: model.id)
        
        let host = UIHostingController(rootView: page)
        navigationController?.pushViewController(host, animated: false)
        
    }
}

// MARK: - DelegateFlowLayout

extension SearchViewController: UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
        guard let header = collectionView.dequeueReusableSupplementaryView(ofKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: HeaderSection.identifier, for: indexPath) as? HeaderSection else {
            fatalError()
        }
            
        return header
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForHeaderInSection section: Int) -> CGSize {
        return CGSize(width: Metric.widthHeader, height: Metric.heightHeader)
    }
}

// MARK: - Constants

extension SearchViewController {
    enum Metric {
        static let widthItemSize: CGFloat = (UIScreen.main.bounds.width - 50) / 2
        static let heightItemSize: CGFloat = widthItemSize * 0.7
        static let topPaddingItem: CGFloat = 10
        static let leftPaddingItem: CGFloat = 20
        static let bottomPaddingItem: CGFloat = 80
        static let rightPaddingItem: CGFloat = 20
        static let widthHeader: CGFloat = UIScreen.main.bounds.width - 40
        static let heightHeader: CGFloat = 30
    }
}
