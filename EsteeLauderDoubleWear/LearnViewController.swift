//
//  LearnViewController.swift
//  EsteeLauderDoubleWear
//
//  Created by Emma Carpenetti on 7/20/21.
//

import UIKit

class LearnViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func linkClicked(_ sender: Any) {
        if let url = URL(string: "https://www.esteelauder.com/product/643/22830/product-catalog/makeup/face/foundation/double-wear/stay-in-place-foundation#/shade/0N1-Alabaster") {
                    UIApplication.shared.open(url, options: [:], completionHandler: nil)
                 }
    }
    
}
