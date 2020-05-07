//
//  NewViewController.swift
//  practica01
//
//  Created by mbtec22 on 5/6/20.
//  Copyright © 2020 Tecsup. All rights reserved.
//

import UIKit

class NewViewController: UIViewController {
    @IBOutlet weak var nota1TextField: UITextField!
    @IBOutlet weak var nota2TextField: UITextField!
    @IBOutlet weak var nota3TextField: UITextField!
    @IBOutlet weak var nota4TextField: UITextField!
    @IBOutlet weak var nota5TextField: UITextField!
    @IBOutlet weak var nota6TextField: UITextField!
    @IBOutlet weak var teoria1TextField: UITextField!
    @IBOutlet weak var teoria2TextField: UITextField!
    @IBOutlet weak var teoria3TextField: UITextField!
    @IBOutlet weak var teoria4TextField: UITextField!
    @IBOutlet weak var promedioLabel: UILabel!
    
    let porc_teoria : Double = 0.6
    let porc_lab : Double = 0.4
   
        
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        promedioLabel.text = "Escriba las notas "
    }
    
    @IBAction func promediarPressed(_ sender: Any) {
        let convert_nota1 = Double(nota1TextField.text!)!
        let convert_nota2 = Double(nota2TextField.text!)!
        let convert_nota3 = Double(nota3TextField.text!)!
        let convert_nota4 = Double(nota4TextField.text!)!
        let convert_nota5 = Double(nota5TextField.text!)!
        let convert_nota6 = Double(nota6TextField.text!)!
        let convert_teoria1 = Double(teoria1TextField.text!)!
        let convert_teoria2 = Double(teoria2TextField.text!)!
        let convert_teoria3 = Double(teoria3TextField.text!)!
        let convert_teoria4 = Double(teoria4TextField.text!)!
        
        let total_lab : Double = (convert_nota1 + convert_nota2 + convert_nota3 + convert_nota4 + convert_nota5 + convert_nota6) / 6
        let total_teoria : Double = (convert_teoria1 + convert_teoria2 + convert_teoria3 + convert_teoria4) / 4
        
        let promedio_teoria = total_teoria * porc_teoria
        let promedio_lab = total_lab * porc_lab
        
        let promedio_general = promedio_lab + promedio_teoria
        let convert_promedio = String(format: "%.2f", promedio_general)
        
         promedioLabel.text = "\(convert_promedio)"
    }
    
}
