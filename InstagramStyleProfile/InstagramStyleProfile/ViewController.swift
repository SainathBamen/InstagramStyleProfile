//
//  ViewController.swift
//  InstagramStyleProfile
//
//  Created by sainath bamen on 01/03/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myCollectionView: UICollectionView!
    var images = ["stImg","stImg","stImg","stImg","stImg","stImg"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }


}

extension ViewController: UICollectionViewDelegate, UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return images.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! MyCollectionViewCell
        cell.myImg.image = UIImage(named: images[indexPath.row])
        
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, willDisplay cell: UICollectionViewCell, forItemAt indexPath: IndexPath) {
        
        cell.contentView.layer.cornerRadius = cell.frame.height/2
        cell.contentView.layer.borderWidth = 4
        cell.layer.borderColor = UIColor.red.cgColor
//        cell.layer.borderWidth = 1
//        cell.layer.borderColor = UIColor.systemBlue.cgColor
        
    }
    
    
}

