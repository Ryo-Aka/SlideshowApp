//
//  ViewController.swift
//  SlideshowApp
//
//  Created by Ryo KnoableJP on 2017/08/24.
//  Copyright © 2017年 Ryo KnoableJP. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let images:[UIImage] = [
        UIImage(named: "春.jpg")!,
        UIImage(named: "夏.jpg")!,
        UIImage(named: "秋.jpg")!,
        UIImage(named: "冬.jpg")!,
        ]
    
    //let image0:UIImage = UIImage(named: "春.jpg")!
    //let image1:UIImage = UIImage(named: "夏.jpg")!
    //let image2:UIImage = UIImage(named: "秋.jpg")!
    //let image3:UIImage = UIImage(named: "冬.jpg")! //画像を準備
    
    var timer: Timer! //タイマー用
    
    var num = 0 //画像のスライド用
    

    @IBOutlet weak var botton_name: UIButton! //再生、停止ボタン
    
    @IBOutlet weak var screen_image: UIButton! //画像ボタン
    
    @IBOutlet weak var next_botton: UIButton! //進むボタン
    
    @IBOutlet weak var back_botton: UIButton! //戻るボタン
    
    //上記は定義　以下機能

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    
        screen_image.setImage(images[0], for: .normal)
        
        
        botton_name.setTitle("再生", for: .normal)
        
        //最初に表示するのは春の画像と再生ボタン
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func next(_ sender: Any) {
        if self.timer == nil{
        num += 1
        
            screen_image.setImage(images[num % images.count], for: .normal)
            
        //if(num%4 == 0){
          //  screen_image.setImage(image0, for: .normal)
        //}
        //else if(num%4 == 1){
          //  screen_image.setImage(image1, for: .normal)
        //}
        //else if(num%4 == 2){
           // screen_image.setImage(image2, for: .normal)
        //}
        //else if(num%4 == 3){
          //  screen_image.setImage(image3, for: .normal)
        //}
        //else {
        //}
        }
    } //進むボタン
    
    @IBAction func back(_ sender: Any) {
        if self.timer == nil{
        num += 3
        
          screen_image.setImage(images[num % images.count], for: .normal)
            
       // if(num%4 == 0){
         //   screen_image.setImage(image0, for: .normal)
        //}
        //else if(num%4 == 1){
          //  screen_image.setImage(image1, for: .normal)
        //}
        //else if(num%4 == 2){
          //  screen_image.setImage(image2, for: .normal)
        //}
        //else if(num%4 == 3){
          //  screen_image.setImage(image3, for: .normal)
        //}
        //else {
        //}
        }
    } //戻るボタン
    
    func slide(timer: Timer!) {
        num += 1
        
        screen_image.setImage(images[num % images.count], for: .normal)
        
        //if(num%4 == 0){
          //  screen_image.setImage(image0, for: .normal)
        //}
        //else if(num%4 == 1){
          //  screen_image.setImage(image1, for: .normal)
        //}
        //else if(num%4 == 2){
          //  screen_image.setImage(image2, for: .normal)
        //}
        //else if(num%4 == 3){
          //  screen_image.setImage(image3, for: .normal)
        //}
        //else {
        //}
    } //スライドショー　タイマー用関数
    
    @IBAction func start_stop(_ sender: Any) {
        if self.timer == nil {
            next_botton.isEnabled = false
            back_botton.isEnabled = false
            botton_name.setTitle("停止", for: .normal)
            self.timer = Timer.scheduledTimer(timeInterval: 2.0, target: self, selector: #selector(slide), userInfo: nil, repeats: true)
        }
        else if self.timer != nil {
            next_botton.isEnabled = true
            back_botton.isEnabled = true
            botton_name.setTitle("再生", for: .normal)
            self.timer.invalidate()
            self.timer = nil
    }
    } //再生、停止ボタン　テキストの切り替わり タイマー設定
    
    @IBAction func screen_botton(_ sender: Any) {
        if self.timer != nil {
            next_botton.isEnabled = true
            back_botton.isEnabled = true
            botton_name.setTitle("再生", for: .normal)
            self.timer.invalidate()
            self.timer = nil
        }
        else{
        }
    } //画像を押した時にスライドショーが再生している場合、ストップしておく
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
            let exViewController = segue.destination as! exViewController
            
            exViewController.image0 = screen_image.imageView!.image!
        
    } //画像のタップで画面遷移
    
    @IBAction func unwind(_ segue: UIStoryboardSegue){
    } //画面遷移用
    
}

