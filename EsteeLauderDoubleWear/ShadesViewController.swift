//
//  ShadesViewController.swift
//  EsteeLauderDoubleWear
//
//  Created by Emma Carpenetti on 7/20/21.
//

import UIKit

class ShadesViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var table: UITableView!
    
    let namesArr = ["0N1 ALABASTER",
                    "1C1 COOL BONE",
                    "1N1 IVORY NUDE",
                    "1W1 BONE",
                    "1N2 ECRU",
                    "1W2 SAND",
                    "2C0 COOL VANILLA",
                    "2W0 WARM VANILLA",
                    "2C1 PURE BEIGE",
                    "2N1 DESERT BEIGE",
                    "5W2 RICH CARAMEL",
                    "6C1 RICH COCOA",
                    "6N1 MOCHA",
                    "6W1 SANDALWOOD",
                    "6C2 PECAN"]
    
    var reds = [0.9647058823529412, 0.9607843137254902, 0.9490196078431372, 0.9490196078431372, 0.9490196078431372, 0.8745098039215686, 0.8431372549019608, 0.807843137254902, 0.8235294117647058, 0.9215686274509803, 0.6274509803921569, 0.5333333333333333, 0.5372549019607843, 0.6352941176470588, 0.5019607843137255]
    var greens = [0.8627450980392157, 0.8392156862745098, 0.7803921568627451, 0.792156862745098, 0.7843137254901961, 0.7098039215686275, 0.6392156862745098, 0.6274509803921569, 0.6431372549019608, 0.7372549019607844, 0.3803921568627451, 0.30980392156862746, 0.36470588235294116, 0.403921568627451, 0.3137254901960784]
    var blues = [0.7568627450980392, 0.7450980392156863, 0.6588235294117647, 0.6745098039215687, 0.6705882352941176, 0.6, 0.4392156862745098, 0.4392156862745098, 0.4627450980392157, 0.611764705882353, 0.2196078431372549, 0.20392156862745098, 0.23921568627450981, 0.24705882352941178, 0.18823529411764706]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        table.register(MyTableViewCell.nib(), forCellReuseIdentifier: MyTableViewCell.identifier)
        table.delegate = self
        table.dataSource = self
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return namesArr.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: MyTableViewCell.identifier, for: indexPath) as! MyTableViewCell
        
        cell.shadeLabel.text = namesArr[indexPath.row]
        cell.cellView.backgroundColor = UIColor.init(red: CGFloat(reds[indexPath.row]), green: CGFloat(greens[indexPath.row]), blue: CGFloat(blues[indexPath.row]), alpha: 1)
        return cell
    }
}
