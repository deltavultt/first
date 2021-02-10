//
//  HomeViewController.swift
//  Alihodzhina Gym
//
//  Created by WSR on 08.02.2021.
//

import UIKit

class HomeViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {

    struct category {
        var name: String
        var image: String
    }
    
    var categoryArray: [category] = [
        category(name: "Hands", image: "ic_hands"),
        category(name: "Spine", image: "ic_spine"),
        category(name: "Torso", image: "ic_torso"),
        category(name: "Legs", image: "ic_legs")
    ]
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        collectionView.delegate = self
        collectionView.dataSource = self
        

    }
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        categoryArray.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "itemCell", for: indexPath) as! HomeCollectionViewCell
        
        cell.pictureItem.image = UIImage(named: categoryArray[indexPath.row].image)
        cell.nameItem.text = categoryArray[indexPath.item].name
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        // Переход
    }

}
