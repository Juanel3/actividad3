//
//  ViewController.swift
//  actividad3
//
//  Created by Juan Miguel Flores on 07/02/24.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var slider1: UISlider!
    @IBOutlet weak var slider2: UISlider!
    @IBOutlet weak var slider3: UISlider!
    @IBOutlet weak var slider4: UISlider!
    
    @IBOutlet weak var label1: UILabel!
    @IBOutlet weak var label2: UILabel!
    @IBOutlet weak var label3: UILabel!
    @IBOutlet weak var label4: UILabel!

    @IBOutlet weak var imagen: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }
    
    func colorUpdater() -> Void {
        let r = CGFloat (slider2.value)
        let g = CGFloat (slider3.value)
        let b = CGFloat (slider4.value)
        let a = CGFloat (slider1.value)
        imagen.backgroundColor = UIColor(red: r, green: g, blue: b, alpha: a)
        
    }
    
    func Slider_Min_Max ()
    -> Void {
        slider2.value = 0.0
        slider3.value = 0.0
        slider4.value = 0.0
        slider1.value = 0.0
        slider2.minimumValue = 0.0
        slider2.maximumValue = 1.0
        slider3.minimumValue = 0.0
        slider3.maximumValue = 1.0
        slider4.minimumValue = 0.0
        slider4.maximumValue = 1.0
        slider1.minimumValue = 0.0
        slider1.maximumValue = 1.0
    }

    
    @IBAction func slider1(_ sender: UISlider) {
        
        label1.text = String(slider1.value)
        imagen.alpha = CGFloat(slider1.value)
    }
    
    @IBAction func slider2(_ sender: UISlider) {
        label2.text = String(slider2.value)
        colorUpdater()
        
    }
    
    @IBAction func slider3(_ sender: UISlider) {
        label3.text = String(slider3.value)
        colorUpdater()
    }
    
    @IBAction func slider4(_ sender: UISlider) {
        label4.text = String(slider4.value)
        colorUpdater()
    }

}

