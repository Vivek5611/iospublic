//
//  FirstTableViewCell.swift
//  CollectionViewWithTableView
//
//  Created by toxsl on 29/08/19.
//  Copyright © 2019 Manpreet.Bhangu. All rights reserved.
//

import UIKit

class FirstTableViewCell: UITableViewCell {
    @IBOutlet weak var firstCollectionView: UICollectionView!
    
    var imgArr = [#imageLiteral(resourceName: "banner"),#imageLiteral(resourceName: "offer3"),#imageLiteral(resourceName: "Unknown"),#imageLiteral(resourceName: "hb")]
    
    override func awakeFromNib() {
        super.awakeFromNib()
        self.firstCollectionView.delegate = self
        self.firstCollectionView.dataSource = self
    }

}
extension FirstTableViewCell: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout{
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
         return imgArr.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if let cell:FirstCollectionViewCell = collectionView.dequeueReusableCell(withReuseIdentifier: "FirstCollectionViewCell", for: indexPath) as? FirstCollectionViewCell
        {
            cell.imgFirstCV.image = imgArr[indexPath.row]
            return cell
        }
        return UICollectionViewCell()
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize{
        let size = CGSize(width: 120, height: 120)
        return size
    }
}
