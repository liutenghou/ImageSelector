//
//  ViewController.swift
//  ImageSelector
//
//  Created by Leo Liu on 5/14/18.
//  Copyright © 2018 hungryforcookies. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {

    var pictureNames = [String]()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        //load some images
        let fm = FileManager.default
        let path = Bundle.main.resourcePath!
        let items = try! fm.contentsOfDirectory(atPath: path)
        
        for item in items{
            if item.hasPrefix("nssl"){
                //load this picture
                pictureNames.append(item)
                
            }
        }
        
        print(pictureNames)
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return pictureNames.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Picture", for:indexPath)
        cell.textLabel?.text = pictureNames[indexPath.row]
        return cell
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

