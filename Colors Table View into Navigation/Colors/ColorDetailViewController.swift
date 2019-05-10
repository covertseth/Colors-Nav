//
//  ColorDetailViewController.swift
//  Colors
//
//  Created by Seth Covert on 5/8/19.
//  Copyright © 2019 Seth Covert. All rights reserved.
//

import UIKit

class ColorDetailViewController: UIViewController {
    
    
    @IBOutlet weak var labelNameColor: UILabel!
    
    var colors = [(colorNames: "Red", backgColor: UIColor.red),
                  (colorNames: "Orange", backgColor: UIColor.orange),
                  (colorNames: "Yellow", backgColor: UIColor.yellow),
                  (colorNames: "Green", backgColor: UIColor.green),
                  (colorNames: "Blue", backgColor: UIColor.blue),
                  (colorNames: "Brown", backgColor: UIColor.brown),
                  (colorNames: "Purple", backgColor: UIColor.purple)]
    var colorIndex: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        labelNameColor.text = colors[indexPath.row].colorNames
        self.view.backgroundColor = colors[indexPath.row].backgColor
    
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
