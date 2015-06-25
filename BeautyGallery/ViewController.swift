//
//  ViewController.swift
//  MyBeautyGallery
//
//  Created by 李超 on 15/6/22.
//  Copyright (c) 2015年 8cloud. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var beautyPicker: UIPickerView!
    
    let beauties = ["范冰冰", "李冰冰", "王菲", "杨幂", "周迅"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        1
        // 声明 beautyPicker 的 dataSource 是由 ViewController 来负责
        beautyPicker.dataSource = self
        beautyPicker.delegate = self
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject!) {
        if segue.identifier == "GoToGallery" {
            let index = beautyPicker.selectedRowInComponent(0)
            
            var imageName: String?
            
            switch index{
            case 0:
                imageName = "fanbingbing"
            case 1:
                imageName = "libingbing"
            case 2:
                imageName = "wangfei"
            case 3:
                imageName = "yangmi"
            case 4:
                imageName = "zhouxun"
            default:
                imageName = nil
            }
            
            var vc = segue.destinationViewController as! GalleryViewController
            vc.imageName = imageName
            
        }
    }
    
    // Unwind segue 
    @IBAction func close(segue: UIStoryboardSegue){
        print("closed")
    }
    
    
}

