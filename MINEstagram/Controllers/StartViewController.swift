//
//  StartViewController.swift
//  MINEstagram
//
//  Created by 高橋達朗 on 2019/08/01.
//  Copyright © 2019 高橋達朗. All rights reserved.
//

import UIKit
import RevealingSplashView

class StartViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let revealingSplashView = RevealingSplashView(iconImage: UIImage(named: "cel")!,iconInitialSize: CGSize(width: 450, height: 450), backgroundColor: UIColor(red: 235, green: 235, blue: 235, alpha: 1))
        
        revealingSplashView.animationType = .woobleAndZoomOut
        //Adds the revealing splash view as a sub view
        self.view.addSubview(revealingSplashView)
        
        //Starts animation
        revealingSplashView.startAnimation(){
            self.performSegue(withIdentifier: "toHome", sender: nil)

        }
    }

}
