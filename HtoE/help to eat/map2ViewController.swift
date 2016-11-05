//
//  map2ViewController.swift
//  PageViewControllerTutorial
//
//  Created by Aldo on 05/11/16.
//  Copyright © 2016 Vladimir Romanov. All rights reserved.
//

import UIKit

class map2ViewController: UIViewController {
    @IBOutlet weak var web: UIWebView!

    override func viewDidLoad() {
        super.viewDidLoad()
        let url = NSURL(string: "https://www.google.com.mx/maps/dir/Maxigas+Natural,+Lomas+de+Chapultepec+V+Secci%C3%B3n,+Ciudad+de+M%C3%A9xico/Google,+Montes+Urales+445,+Miguel+Hidalgo,+Lomas+de+Chapultepec,+11000+Ciudad+de+M%C3%A9xico,+D.F./@19.4291943,-99.208014,18z/data=!3m1!4b1!4m13!4m12!1m5!1m1!1s0x85d2021e1c6a7919:0xa2bf1f4e2cc69231!2m2!1d-99.2073448!2d19.4300696!1m5!1m1!1s0x85d201f60a8f816b:0xca7e9b8e9149aac2!2m2!1d-99.2065313!2d19.4282421")
        web.loadRequest(NSURLRequest(url: url! as URL) as URLRequest)

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
