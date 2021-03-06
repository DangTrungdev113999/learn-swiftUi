//
//  MainViewController.swift
//  CollectionView
//
//  Created by Trung Dang on 22/10/2021.
//

import UIKit

class MainViewController: UIViewController,
      UICollectionViewDelegate,
      UICollectionViewDataSource,
      UICollectionViewDelegateFlowLayout {
    
    var collectionView: UICollectionView?
    let cellId = "ExampleCell"
    let cellSpacing: CGFloat = 10
    
    //read data
    var foods: [Food] = foodData
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        collectionView = UICollectionView(frame: CGRect.zero, collectionViewLayout: UICollectionViewLayout())
        collectionView?.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(collectionView!)
        collectionView?.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        collectionView?.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        collectionView?.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        collectionView?.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        collectionView?.backgroundColor = .white
        
        //collectionView settings
        let collectionViewFlowLayout = UICollectionViewFlowLayout() // quản lý giao diện kích thước của cell
        collectionView?.setCollectionViewLayout(collectionViewFlowLayout, animated: true)
        collectionViewFlowLayout.scrollDirection = .vertical
        collectionViewFlowLayout.sectionInset = UIEdgeInsets(top: 0, left: cellSpacing, bottom: 0, right: cellSpacing)
        collectionViewFlowLayout.minimumInteritemSpacing = 5
        collectionViewFlowLayout.minimumLineSpacing = 10
        
        collectionView?.register(UICollectionViewCell.self, forCellWithReuseIdentifier: cellId)
        collectionView?.register(FoodCollectionViewCell.self, forCellWithReuseIdentifier: cellId)
        collectionView?.delegate = self
        collectionView?.dataSource = self
    }
    
   // UICollectionViewDataSource
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return foods.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellId, for: indexPath) as! FoodCollectionViewCell
//        cell.backgroundColor = indexPath.row % 2 == 0 ?  .cyan : .orange
//        cell.selectedBackgroundView = UIView()
//        cell.selectedBackgroundView?.backgroundColor = .red
        cell.autolayoutCell()
        cell.food = foods[indexPath.row]
        return cell
    }
    
//    UICollectionViewDelegateFlowLayout
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let width = (UIScreen.main.bounds.size.width - 3 * cellSpacing) / 2
        let height = width
        return CGSize(width: width, height: height)
    }
}
