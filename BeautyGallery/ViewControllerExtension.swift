//
//  ViewControllerExtension.swift
//  MyBeautyGallery
//
//  Created by 李超 on 15/6/22.
//  Copyright (c) 2015年 8cloud. All rights reserved.
//

import UIKit

// dataSource 返回一些静态信息
extension ViewController: UIPickerViewDataSource {
    
    // 指定多少个组件来组成 pickerView
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int{
        return 1;
    }
    
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int{
        return beauties.count;
    }
}

// delegate 放回动态信息，比如方法
extension ViewController: UIPickerViewDelegate{
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String!{
        return beauties[row]
    }

}

