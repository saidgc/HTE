//
//  compartViewController.swift
//  PageViewControllerTutorial
//
//  Created by Aldo on 05/11/16.
//  Copyright © 2016 Vladimir Romanov. All rights reserved.
//

import UIKit

class compartViewController: UIViewController {

    @IBAction func compartir(_ sender: AnyObject) {
        
        let textToShare = "Help to Eat ayuda a combatir la pobreza sin modificar tu rutina diaria, ayudar esta en manos de todos."
        
        if let myWebsite = URL(string: "http://www.bytemex.net/HTE") {
            let objectsToShare = [textToShare, myWebsite] as [Any]
            let activityVC = UIActivityViewController(activityItems: objectsToShare, applicationActivities: nil)
            
            self.present(activityVC, animated: true, completion: nil)
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
