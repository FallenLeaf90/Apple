//
//  ViewController.swift
//  PickerView2
//
//  Created by new on 2021/12/25.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
  let MAX_ARRAY_NUM = 4
  let PICKER_VIEW_COLUMN = 1
  let PICKER_VIEW_HEIGHT: CGFloat = 80
  var imageArray = [UIImage?]()
  var imageFileName = ["1.png", "2.png", "3.png", "4.png"]
    
    @IBOutlet var pickerImage: UIPickerView!
    @IBOutlet var lblImageFileName: UILabel!
    @IBOutlet var ImageView: UIImageView!
    
    // 1. 마우스로 피커뷰를 선택하고 휠로 위, 아래 움직이면 피커뷰가 움직이면서 룰렛이 돌아가게 하는 코딩
    
    // returns the number of 'columns' to display.
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return PICKER_VIEW_COLUMN
    }
    // returns the # of rows in each component..
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return imageFileName.count
    }
    func pickerView(_ pickerView: UIPickerView, rowHeightForComponent component: Int) -> CGFloat {
        return PICKER_VIEW_HEIGHT
    }
    
   // func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
   //  return imageFileName[row]
   // }
    func pickerView(_ pickerView: UIPickerView, viewForRow row: Int, forComponent component: Int, reusing view: UIView?) -> UIView {
        let imageView = UIImageView(image: imageArray[row])
        imageView.frame = CGRect(x: 0, y: 0, width: 100, height: 150)
       
        return imageView
    }
    
    
    // 2. 피커뷰의 델리게이트 메서드를 사용하여 룰렛이 선택되었을 때, 레이블에 선택된 파일명이 출력되는 코딩
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        lblImageFileName.text = imageFileName[row]
        ImageView.image = imageArray[row]
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    for i in 0 ..< MAX_ARRAY_NUM {
        let image = UIImage(named: imageFileName[i])
        imageArray.append(image)
    }

    lblImageFileName.text = imageFileName[0]
    ImageView.image = imageArray[0]
    }
}
