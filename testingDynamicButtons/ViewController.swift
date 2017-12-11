//
//  ViewController.swift
//  testingDynamicButtons
//
//  Created by Luca Gaudino on 11/12/2017.
//  Copyright © 2017 Luca Gaudino. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
            
        createButton(x: 100, y: 100, width: 100, height: 50)
    }
    
    func createButton(x: Int, y: Int, width: Int, height: Int){
        let button = UIButton(frame: CGRect(x: x, y: y, width: width, height: height))
        button.backgroundColor = .green
        button.setTitle("Test Button", for: .normal)
        button.addTarget(self, action: #selector(buttonAction), for: .touchUpInside)
        button.setTitleColor(.black, for: .highlighted)
        
        self.view.addSubview(button)
    }
    
    func createButtonWall(buttonNumber: Int){
        for index in 0...buttonNumber-1{
            createButton(x: 100, y: 100, width: 100, height: 50)
        }
    }
    
    @objc func buttonAction(sender: UIButton!) {
        print("Button tapped")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

