//
//  ViewController.swift
//  SubView
//
//  Created by hands-rec on 2016/10/26.
//  Copyright (c) 2016 hands-rec. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var baseView: UIView!
    
    var subLabel: UILabel = UILabel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        self.setupLabel()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    private func setupLabel() {
        subLabel.text = "テスト"
        subLabel.backgroundColor = UIColor(red: 0.8, green: 1.0, blue: 1.0, alpha:1.0)
        
        let subLabelHeight: CGFloat = 100
        let subLabelWidth: CGFloat = 100
        let subLabelX: CGFloat = baseView.frame.width - subLabelWidth
        let subLabelY: CGFloat = baseView.frame.height - subLabelHeight
        subLabel.frame = CGRect(x: subLabelX, y: subLabelY, width: 100, height: subLabelHeight)
        
        baseView.addSubview(subLabel)
    }


}

