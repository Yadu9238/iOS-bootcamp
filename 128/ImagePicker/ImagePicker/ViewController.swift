//
//  ViewController.swift
//  ImagePicker
//
//  Created by Apple on 20/03/21.
//  Copyright © 2021 Apple. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIImagePickerControllerDelegate ,UINavigationControllerDelegate{
    
    

    
    @IBOutlet weak var image: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print(NSHomeDirectory())
    }



    @IBAction func takePicture(_ sender: Any) {
        
        let imagePicker = UIImagePickerController()
        imagePicker.delegate = self
        self.present(imagePicker, animated: true ,completion: nil)
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        guard let selectedImage = info[UIImagePickerController.InfoKey.originalImage] as? UIImage else{
            return
        }
        image.image = selectedImage
        let fileManager = FileManager.default
        
        if let data = selectedImage.jpegData(compressionQuality: 90){
            let imageName = "test.jpg"
            let imagePath = documentDir().appendingPathComponent(imageName)
            try? data.write(to: imagePath)
        }
        dismiss(animated: true, completion: nil)
    }
    
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        if let ipc = segue.destination as? UIImagePickerController{
//            ipc.delegate = self
//        }
//    }

    func documentDir()->URL{
        return FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first!
        
    }


}

