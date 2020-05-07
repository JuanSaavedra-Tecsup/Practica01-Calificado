//
//  ViewController.swift
//  practica01
//
//  Created by mbtec22 on 5/6/20.
//  Copyright © 2020 Tecsup. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var primer_digito: UITextField!
    @IBOutlet weak var segundo_digito: UITextField!
    @IBOutlet weak var segmentedControl: UISegmentedControl!
    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var nombre_operacion: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        resultLabel.text = "Escriba los digitos "
    }


    @IBAction func resolverPressed(_ sender: Any) {
        let selectedIndex = segmentedControl.selectedSegmentIndex
        print("Hemos seleccionado \(selectedIndex)")
        
        let textFieldVal1 = Double(primer_digito.text!)!
        let textFieldVal2 = Double(segundo_digito.text!)!
        
        if  selectedIndex == 0 {
            let operationValue = textFieldVal1 + textFieldVal2
            nombre_operacion.text = "Suma"
            resultLabel.text = "\(operationValue)"
        }else if selectedIndex == 1 {
            let operationValue = textFieldVal1 - textFieldVal2
             nombre_operacion.text = "Resta"
             resultLabel.text = "\(operationValue)"
        }else if selectedIndex == 2 {
            let operationValue = textFieldVal1 * textFieldVal2
             nombre_operacion.text = "Multiplicación"
             resultLabel.text = "\(operationValue)"
        }else{
            let operationValue = textFieldVal1 / textFieldVal2
             nombre_operacion.text = "División"
             resultLabel.text = "\(operationValue)"
        }
    }
}

