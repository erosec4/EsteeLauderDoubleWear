//
//  LearnViewController.swift
//  EsteeLauderDoubleWear
//
//  Created by Emma Carpenetti on 7/20/21.
//

import UIKit

class LearnViewController: UIViewController { //, UICollectionViewDelegate, UICollectionViewDataSource {
    
    
    @IBOutlet weak var collectionView: UICollectionView!
    @IBOutlet weak var imageInCell: UIImageView!
    var imageNames = ["EL5", "EL9", "EL8.2", "EL2", "EL12", "EL16"]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        /* collectionView.delegate = self
        collectionView.dataSource = self
    }
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 6
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath)
        
        //cell.imageInCell = imageNames[indexPath.row] */
    }
    
}
