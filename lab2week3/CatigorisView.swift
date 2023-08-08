//
//  CatigorisVew.swift
//  lab2week3
//
//  Created by afnan althobaiti on 20/01/1445 AH.
//

import Foundation
import UIKit
import SnapKit

class RootViewController: UIViewController {
    let textField: UITextField = .init()
   var collectionView: UICollectionView = .init(frame: .zero, collectionViewLayout: UICollectionViewLayout())
    
    let categories: Array<String> = [
        "Tech companies",
        "Travel",
        "Resturant",
        "Tv",
        "Recipes",
        "Celeber"
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .white
        self.title = "Persoalize your feed"
        configureTextField()
        configureCategoriesBar()
//        self.title = "Persoalize your feed"
    }
    func configureTextField() {
        self.view.addSubview(textField)
        textField.snp.makeConstraints {
            $0.top.equalTo(100)
            $0.width.equalTo(self.view.frame.width - 32)
            $0.height.equalTo(50)
            $0.leading.equalTo(16)
        }
    }
    
    func configureCategoriesBar() {
      let layout = UICollectionViewFlowLayout()
        layout.itemSize = CGSize(width: 100, height: 50)
        layout.minimumLineSpacing = 4
        layout.minimumInteritemSpacing = 4
        layout.scrollDirection = .vertical
        collectionView = .init(frame: .zero, collectionViewLayout: layout)
        collectionView.showsHorizontalScrollIndicator = false
        self.view.addSubview(collectionView)
        collectionView.snp.makeConstraints {
            $0.top.equalTo(textField.snp.bottom)
            $0.width.equalTo(self.view.frame.width - 30)
            $0.height.equalTo(60)
            $0.leading.equalTo(18)
        }
    }
}
   extension RootViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return categories.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "", for: indexPath as IndexPath)
        let lable = UILabel()
        lable.text = ""
        lable.tintColor = .blue
        lable.backgroundColor = .orange
        cell.addSubview(lable)
        lable.snp.makeConstraints {
            $0.leading.top.trailing.bottom.equalTo(cell)
        }
        
         return cell
    }
    
     func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
}
    


