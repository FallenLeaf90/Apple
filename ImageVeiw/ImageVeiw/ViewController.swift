//
//  ViewController.swift
//  ImageVeiw
//
//  Created by new on 2021/12/18.
//

import UIKit

class ViewController: UIViewController {
    var isZoom = false
    var imgOn: UIImage?
    var imgOff: UIImage?
    
    @IBOutlet var imgView: UIImageView!
    @IBOutlet var btnResize: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        imgOn = UIImage(named: "lamp_on")
        imgOff = UIImage(named: "lamp_off")
        
        imgView.image = imgOn
    }
//버튼을 눌러 크기가 바뀔때?
    
    @IBAction func btnResizeimg(_ sender: UIButton) {
        let scale:CGFloat = 2.0
        var newWidth:CGFloat, newHeight:CGFloat
       
        if (isZoom){ // true}
            newWidth = imgView.frame.width/scale
            newHeight = imgView.frame.height/scale
            btnResize.setTitle("확대", for: .normal)
        }
        else { // false}
            newWidth = imgView.frame.width*scale
            newHeight = imgView.frame.height*scale
            btnResize.setTitle("축소", for: .normal)
        }
        imgView.frame.size = CGSize(width: newWidth, height: newHeight)
        isZoom = !isZoom
        }
    //스위치를 눌러 동작이 되었을때?
    @IBAction func switchimageOnOff(_ sender: UISwitch) {
        if sender.isOn{
            imgView.image = imgOn
        } else {
            imgView.image = imgOff
        }
    }
}
