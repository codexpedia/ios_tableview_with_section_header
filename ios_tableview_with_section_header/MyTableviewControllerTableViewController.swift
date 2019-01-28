//
//  MyTableviewControllerTableViewController.swift
//  ios_tableview_with_section_header
//
//  Created by codexpedia on 1/27/19.
//  Copyright © 2019 codexpedia. All rights reserved.
//

import UIKit

class MyTableviewControllerTableViewController: UITableViewController {

    private let numberOfSections = 3
    var meat = ["Beef","Turkey","Fish", "Lamb", "Chicken", "Pork", "Beef","Turkey","Fish", "Lamb", "Chicken", "Pork"]
    var fruit = ["Apple","Banana","Cherry","Apple","Banana","Cherry","Apple","Banana","Cherry"]
    var vegetable = ["Lettuce","Broccoli","Cauliflower","Lettuce","Broccoli","Cauliflower","Lettuce","Broccoli","Cauliflower"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // make the header sticky
        self.automaticallyAdjustsScrollViewInsets = false
    }

    // MARK: - Table view data source

    // return the number of sections
    override func numberOfSections(in tableView: UITableView) -> Int {
        return numberOfSections
    }

    // return the number of rows in the specified section
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        var rowCount = 0
        switch (section) {
        case 0:
            rowCount = meat.count
        case 1:
            rowCount = fruit.count
        case 2:
            rowCount = vegetable.count
        default:
            rowCount = 0
        }
        
        return rowCount
    }

    // Content Cell
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "tableCell", for: indexPath)

        switch (indexPath.section) {
        case 0:
            cell.textLabel?.text = meat[indexPath.row]
        case 1:
            cell.textLabel?.text = fruit[indexPath.row]
        case 2:
            cell.textLabel?.text = vegetable[indexPath.row]
        default:
            cell.textLabel?.text = "Other"
        }
        return cell
    }
    
    // Header Cell
    override func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let  headerCell = tableView.dequeueReusableCell(withIdentifier: "HeaderCell") as! CustomTableViewHeaderCell
        headerCell.backgroundColor = UIColor.gray
        
        switch (section) {
        case 0:
            headerCell.headerLabel.text = "Meat";
        case 1:
            headerCell.headerLabel.text = "Fruit";
        case 2:
            headerCell.headerLabel.text = "Vegetable";
        default:
            headerCell.headerLabel.text = "Other";
        }
        
        return headerCell
    }
    
    // Footer Cell
    override func tableView(_ tableView: UITableView, viewForFooterInSection section: Int) -> UIView? {
        let rect = CGRect(origin: CGPoint(x: 0,y :0), size: CGSize(width: tableView.frame.size.width, height: 20))
        let footerView = UIView(frame: rect)
        footerView.backgroundColor = UIColor.darkGray
        return footerView
    }
    
    // footer height
    override func tableView(_ : UITableView, heightForFooterInSection section: Int) -> CGFloat {
        return 20.0
    }

}
