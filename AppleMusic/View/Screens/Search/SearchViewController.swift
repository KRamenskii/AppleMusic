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
        let width: CGFloat = (UIScreen.main.bounds.width - 50) / 2
        let height: CGFloat = width * 0.7

        layout.sectionInset = UIEdgeInsets(top: 10, left: 20, bottom: 80, right: 20)
        layout.itemSize = CGSize(width: width, height: height)
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
        let width = UIScreen.main.bounds.width - 40
        
        return CGSize(width: width, height: 30)
    }
}
