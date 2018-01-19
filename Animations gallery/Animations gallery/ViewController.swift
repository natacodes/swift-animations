//
//  ViewController.swift
//  Animations gallery
//
//  Created by Nataliia Koldaeva on 1/19/18.
//  Copyright © 2018 Nataliia Koldaeva. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let blue = UIColor(red:0.32, green:0.70, blue:1.00, alpha:1.0)
    let grayBlue = UIColor(red:0.58, green:0.64, blue:0.71, alpha:1.0)
    
    // MARK: BOLUS & BASAL START
    @IBOutlet var stressingView: UIView!
    @IBOutlet var stressingViewLeadingBolus: NSLayoutConstraint!
    @IBOutlet var stressingViewTrailingBolus: NSLayoutConstraint!
    @IBOutlet var stressingViewLeadingBasal: NSLayoutConstraint!
    @IBOutlet var stressingViewTrailingBasal: NSLayoutConstraint!
    @IBOutlet var iconBolus: UIImageView!
    @IBOutlet var iconBasal: UIImageView!
    
    @IBOutlet var bolusBasalButtonContainer: UIView!
    
    @IBOutlet var bolusButton: UIButton!
    @IBAction func bolusButton(_ sender: UIButton) {
        
        bolusButton.setTitleColor(blue, for: .normal)
        basalButton.setTitleColor(grayBlue, for: .normal)
        
        iconBolus.image = UIImage(named: "icon_bolus_blue.pdf")
        iconBasal.image = UIImage(named: "icon_basal_gray.pdf")
        
        stressingViewLeadingBasal.isActive = false
        stressingViewLeadingBolus.isActive = true
        
        UIView.animate(withDuration: 0.2, delay: 0, options: .curveEaseIn, animations: {
            self.view.layoutIfNeeded()
        }, completion: {(finished: Bool) -> Void in
            self.stressingViewTrailingBasal.isActive = false
            self.stressingViewTrailingBolus.isActive = true
            UIView.animate(withDuration: 0.2, delay: 0, options: .curveEaseIn, animations: {
                self.view.layoutIfNeeded()
            })
        })
    }
    
    @IBOutlet var basalButton: UIButton!
    @IBAction func basalButton(_ sender: UIButton) {
        
        bolusButton.setTitleColor(grayBlue, for: .normal)
        basalButton.setTitleColor(blue, for: .normal)
        
        iconBolus.image = UIImage(named: "icon_bolus_gray.pdf")
        iconBasal.image = UIImage(named: "icon_basal_blue.pdf")
        
        stressingViewTrailingBolus.isActive = false
        stressingViewTrailingBasal.isActive = true
        
        UIView.animate(withDuration: 0.2, delay: 0, options: .curveEaseIn, animations: {
            self.view.layoutIfNeeded()
        }, completion: {(finished: Bool) -> Void in
            self.stressingViewLeadingBolus.isActive = false
            self.stressingViewLeadingBasal.isActive = true
            UIView.animate(withDuration: 0.2, delay: 0, options: .curveEaseIn, animations: {
                self.view.layoutIfNeeded()
            })
        })
    }
    // MARK: BOLUS & BASAL END

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

