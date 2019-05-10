//
//  ColorsViewController.swift
//  Colors
//
//  Created by Seth Covert on 5/7/19.
//  Copyright © 2019 Seth Covert. All rights reserved.
//

import UIKit

class ColorsViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var colors = [Colors(colorNames: "Red", backgColor: UIColor.red),
                  Colors(colorNames: "Orange", backgColor: UIColor.orange),
                  Colors(colorNames: "Yellow", backgColor: UIColor.yellow),
                  Colors(colorNames: "Green", backgColor: UIColor.green),
                  Colors(colorNames: "Blue", backgColor: UIColor.blue),
                  Colors(colorNames: "Brown", backgColor: UIColor.brown),
                  Colors(colorNames: "Purple", backgColor: UIColor.purple)]
    var colorIndex: Int = 0
    @IBOutlet var colorsTableView: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return colors.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cellcolor", for: indexPath)
        
        cell.textLabel?.text = colors[indexPath.row].colorNames
        cell.backgroundColor = colors[indexPath.row].backgColor
        return cell
    }
   //override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
       // if let destination = segue.destination as? ColorDetailViewController,
        //    let row = colorsTableView.IndexPathForSelectedRow?.row
       // {
            
        //    destination.colors = colors [colorsTableView.indexPathForSelectedRow?.row]
     //   }
   // }
}
