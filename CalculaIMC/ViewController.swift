//
//  ViewController.swift
//  CalculaIMC
//
//  Created by labmacmini12 on 24/07/2018.
//  Copyright © 2018 cursoIOS. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var exibeReultado: UILabel!
    @IBOutlet weak var digitaPeso: UITextField!
    @IBOutlet weak var digitaAltura: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //metodo chamado quando um toque ocorre na tela
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        digitaPeso.resignFirstResponder()
        digitaAltura.resignFirstResponder()
    }
    
    //TRATA O EVENTO DE BOTÃO PARA CALCULAR O IMC
    @IBAction func handleIMC(_ sender: UIButton) {
        if  let peso = Float(digitaPeso.text!),
            let altura = Float(digitaAltura.text!){
            let IMC = peso / (altura * altura)
            
            if(IMC <= 16){
                exibeReultado.text = "MAGRINHO"
            }else if(IMC <= 25){
                exibeReultado.text = "NORMAL"
            }else{
                exibeReultado.text = "GORDINHO"
            }
        }
        
    }
}

