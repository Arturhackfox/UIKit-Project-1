//
//  ViewController.swift
//  proj-1
//
//  Created by Arthur Sh on 11.06.2023.
//

import UIKit

class ViewController: UIViewController {
    var pictures = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //MARK: loading pictures with FileManager

        let fm = FileManager.default
        let resourcePath = Bundle.main.resourcePath!
        let items = try! fm.contentsOfDirectory(atPath: resourcePath)
        
        for item in items {
            if item.hasPrefix("nssl") {
                pictures.append(item)
            }
        }
        print(pictures)
    }


}

