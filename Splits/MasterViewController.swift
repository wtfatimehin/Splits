//
//  MasterViewController.swift
//  Splits
//
//  Created by Willie Fatimehin on 2/23/19.
//  Copyright © 2019 Willie Fatimehin. All rights reserved.
//

import UIKit

class MasterViewController: UITableViewController {

    


    override func viewDidLoad() {
        super.viewDidLoad()
    
    }



   

    // MARK: - Segues

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showDetail" {
            if let indexPath = tableView.indexPathForSelectedRow {
                let controller = (segue.destination as! UINavigationController).topViewController as! ImagePresentationVC
                controller.image = imageArray[indexPath.row]
                //brings imageview to full screen button
                controller.navigationItem.leftBarButtonItem = splitViewController?.displayModeButtonItem
                controller.navigationItem.leftItemsSupplementBackButton = true
            }
        }
    }

    // MARK: - Table View

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return imageArray.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        
        cell.textLabel!.text = namesArray[indexPath.row]
        cell.backgroundColor = colorsArray[indexPath.row]
        return cell
    }
    //makes cell go from grey back to its orginal color
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
    //show all the rows when device is turned sidewats
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if let navBarHeight = navigationController?.navigationBar.frame.height {
            return (tableView.frame.height - navBarHeight) / (CGFloat(imageArray.count))
        } else {
            return (tableView.frame.height - 60) / (CGFloat(imageArray.count))
        }
        
    }



}

