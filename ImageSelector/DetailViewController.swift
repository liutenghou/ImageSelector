//
//  DetailViewController.swift
//  ImageSelector
//
//  Created by Leo Liu on 5/28/18.
//  Copyright © 2018 hungryforcookies. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    var selectedImageName: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        //load the image into UIImageView
        if let imageToLoad = selectedImageName {
            self.imageView.image = UIImage(named:imageToLoad)
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
