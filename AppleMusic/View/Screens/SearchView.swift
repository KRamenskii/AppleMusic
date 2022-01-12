//
//  SearchView.swift
//  AppleMusic
//
//  Created by Kirill on 20.11.2021.
//

import SwiftUI
import UIKit

struct SearchView: UIViewControllerRepresentable {
    
    func makeUIViewController(context: Context) -> some UIViewController {
        let searchNavController = UINavigationController(rootViewController: SearchViewController())
        searchNavController.navigationBar.isTranslucent = false
        searchNavController.navigationBar.backgroundColor = .white
        
        return searchNavController
    }
    
    func updateUIViewController(_ uiViewController: UIViewControllerType, context: Context) {
        
    }
}
