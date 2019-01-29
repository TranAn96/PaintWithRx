//
//  BaseNavigationController.swift
//  PaintWithRx
//
//  Created by Trần An on 1/29/19.
//  Copyright © 2019 AnTran. All rights reserved.
//
import UIKit

class BaseNavigationController: UINavigationController, UINavigationControllerDelegate {
    
    private(set) var isViewControllerPushing = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.delegate = self
        
        self.setUI()
    }
    
    private func setUI() {
        self.navigationBar.isTranslucent = false
        //self.navigationBar.barTintColor = UIColor.themeRedColor()
        self.navigationBar.tintColor = UIColor.white
    }
    
    override func pushViewController(_ viewController: UIViewController, animated: Bool) {
        if !isViewControllerPushing {
            self.isViewControllerPushing = true
            super.pushViewController(viewController, animated: animated)
        }
    }
    
    func navigationController(_ navigationController: UINavigationController,
                              didShow viewController: UIViewController,
                                                    animated: Bool) {
        self.isViewControllerPushing = false
    }
}
