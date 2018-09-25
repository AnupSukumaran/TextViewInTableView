//
//  ViewController.swift
//  DynamicTableTextView
//
//  Created by Abraham VG on 25/09/18.
//  Copyright © 2018 TechTonic. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var tableViewData: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()
//        tableViewData.rowHeight = UITableViewAutomaticDimension
//        tableViewData.estimatedRowHeight = 60
        tableViewData.rowHeight = UITableView.automaticDimension
        tableViewData.estimatedRowHeight = 60
        // Do any additional setup after loading the view, typically from a nib.
    }


}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TextViewTableViewCell") as! TextViewTableViewCell
        
        cell.textViewData.text =  """
                Lorem ipsum dolor sit er elit lamet, consectetaur cillium adipisicing pecu, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.
        """
        
        return cell
    }
    
    
    
}
