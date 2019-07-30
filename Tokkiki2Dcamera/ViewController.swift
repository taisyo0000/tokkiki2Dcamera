//
//  ViewController.swift
//  Tokkiki2Dcamera
//
//  Created by 伊藤大生 on 2019/07/30.
//  Copyright © 2019 ItoHiroki. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {

    @IBOutlet weak var imageView: UIImageView!
    let stamp = UIImage(named: "logo-tokki.gif")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func btnPushed(_ sender: AnyObject) {
        // ----- カメラを起動する
        let picker = UIImagePickerController()
        picker.sourceType = UIImagePickerController.SourceType.camera
        picker.delegate = self
        present(picker, animated: true, completion: nil)
    }
    
    func imagePickerController(picker: UIImagePickerController,
                               didFinishPickingImage image: UIImage,
                               editingInfo: [String : AnyObject]?) {
        imageView.image = image                             // 撮影した画像をセットする
        dismiss(animated: true, completion: nil)    // アプリ画面へ戻る
    }
    
}

