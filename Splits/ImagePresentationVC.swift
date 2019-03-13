//
//  ImagePresentationVC.swift
//  Splits
//
//  Created by Willie Fatimehin on 2/23/19.
//  Copyright © 2019 Willie Fatimehin. All rights reserved.
//

import UIKit

class ImagePresentationVC: UIViewController {

    @IBOutlet weak var itemImageView: UIImageView!
    
    var image: UIImage?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        itemImageView.image = image
    }


}

