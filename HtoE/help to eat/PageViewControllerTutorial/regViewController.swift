//
//  regViewController.swift
//  PageViewControllerTutorial
//
//  Created by Aldo on 05/11/16.
//  Copyright © 2016 Vladimir Romanov. All rights reserved.
//

import UIKit

class regViewController: UIViewController {

    @IBOutlet weak var particular: UISwitch!
    @IBOutlet weak var conductor: UISwitch!
    @IBOutlet weak var donante: UISwitch!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func conductor(_ sender: AnyObject) {
        if (conductor.isOn){
        donante.setOn(false, animated: true )
        particular.setOn(false, animated: true )
            matricula.isHidden = false
            carro.isHidden = false
            
            colonia.isHidden = true
            numero.isHidden = true
            calle.isHidden = true
            celular.isHidden = true
            
        }
    }
    @IBAction func donante(_ sender: AnyObject) {
        if(donante.isOn){
            conductor.setOn(false, animated: true)
           particular.setOn(false, animated: true)
            matricula.isHidden = true
            carro.isHidden = true
            
            colonia.isHidden = true
            numero.isHidden = true
            calle.isHidden = true
            celular.isHidden = true
        }
    }

    @IBOutlet weak var nombre: UITextField!
    @IBOutlet weak var correo: UITextField!
    @IBOutlet weak var colonia: UITextField!
    @IBOutlet weak var calle: UITextField!
    @IBOutlet weak var celular: UITextField!
    @IBOutlet weak var numero: UITextField!
    @IBOutlet weak var carro: UITextField!
    @IBOutlet weak var matricula: UITextField!
    @IBOutlet weak var contraseña: UITextField!
    @IBOutlet weak var apellido: UITextField!
    @IBAction func particular(_ sender: AnyObject) {
        if(particular.isOn){
            conductor.setOn(false, animated: true)
            donante.setOn(false, animated: true)
            colonia.isHidden = false
            numero.isHidden = false
            calle.isHidden = false
            celular.isHidden = false
            matricula.isHidden = false
            carro.isHidden = false
        }
    }
    @IBAction func particular1(_ sender: AnyObject) {
        if (conductor.isOn){
            donante.setOn(false, animated: true )
            particular.setOn(false, animated: true )
        }
    }
    @IBOutlet weak var registrar: UIButton!
    @IBAction func registra(_ sender: AnyObject) {
        
        
    }
    @IBOutlet weak var foto: UIImageView!
    @IBOutlet weak var lbl1: UILabel!
    @IBOutlet weak var lbl2: UILabel!
    @IBOutlet weak var button1: UIButton!
    @IBOutlet weak var lbl3: UILabel!
    @IBAction func Guarda(_ sender: UIButton) {
        
        matricula.isHidden = true
        carro.isHidden = true
        nombre.isHidden = true
        colonia.isHidden = true
        numero.isHidden = true
        calle.isHidden = true
        celular.isHidden = true
        apellido.isHidden = true
        correo.isHidden = true
        contraseña.isHidden = true
        donante.isHidden = true
        conductor.isHidden = true
        particular.isHidden = true
        lbl1.isHidden = true
        lbl2.isHidden = true
        lbl3.isHidden = true
        button1.isHidden = true
        
        
        foto.isHidden = false
        
        let alertController = UIAlertController(title: "Exito", message: "Bienvenido", preferredStyle: .alert)
        
        let defaultAction = UIAlertAction(title: "OK", style: .default, handler: nil)
        alertController.addAction(defaultAction)
        
        present(alertController, animated: true, completion: nil)
        
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
