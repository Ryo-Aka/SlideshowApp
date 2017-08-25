//
//  exViewController.swift
//  SlideshowApp
//
//  Created by Ryo KnoableJP on 2017/08/24.
//  Copyright © 2017年 Ryo KnoableJP. All rights reserved.
//

import UIKit

class exViewController: UIViewController {
    
    @IBOutlet weak var imageView: UIImageView!
    
    var image0:UIImage = UIImage(named: "春.jpg")!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        imageView.image = image0
        self.view.addSubview(imageView)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
       // let viewController = segue.destination as! ViewController
        
        //viewController.comeback = i
    
   // }

    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
