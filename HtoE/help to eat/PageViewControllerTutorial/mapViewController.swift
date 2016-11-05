//
//  mapViewController.swift
//  PageViewControllerTutorial
//
//  Created by Aldo on 04/11/16.
//  Copyright © 2016 Vladimir Romanov. All rights reserved.
//

import UIKit
import MapKit
import CoreLocation


class mapViewController: UIViewController, MKMapViewDelegate, CLLocationManagerDelegate{

    @IBOutlet weak var mapa: MKMapView!
    
    var location = CLLocationManager()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        location.delegate = self
        location.desiredAccuracy = kCLLocationAccuracyBest
        location.requestWhenInUseAuthorization()
        location.startUpdatingLocation()
        //anotacion
        var anotacion = MKPointAnnotation()
        anotacion.title="Tecnologico de Monterrey"
        anotacion.subtitle="Deja aqui tus alimentos"
        let latDelta:CLLocationDegrees = 18.807621
        let lonDelta:CLLocationDegrees = -99.223691
        
        
        
        anotacion.coordinate = CLLocationCoordinate2DMake(latDelta, lonDelta)

        self.location.desiredAccuracy = kCLLocationAccuracyBest
        self.location.requestWhenInUseAuthorization()
        self.location.startUpdatingLocation()
        self.mapa.showsUserLocation = true
        
        mapa.addAnnotation(anotacion)
        //fin anotacion
        
        //
        
        var anotacion2 = MKPointAnnotation()
        anotacion2.title="Gemelos Pizza"
        anotacion2.subtitle="Deja aqui tus alimentos"
        let latDelta2:CLLocationDegrees = 18.8105754
        let lonDelta2:CLLocationDegrees = -99.2290675
        
        
        
        anotacion2.coordinate = CLLocationCoordinate2DMake(latDelta2, lonDelta2)
        
        
        //
        //
        
        var anotacion3 = MKPointAnnotation()
        anotacion3.title="Mundo's Place"
        anotacion3.subtitle="Deja aqui tus alimentos"
        let latDelta3:CLLocationDegrees = 18.8105754
        let lonDelta3:CLLocationDegrees = -99.2290675
        
        
        
        anotacion3.coordinate = CLLocationCoordinate2DMake(latDelta3, lonDelta3)
        
        
        
        //
        //
        
        var anotacion4 = MKPointAnnotation()
        anotacion4.title="Restaurante Quiubole"
        anotacion4.subtitle="Deja aqui tus alimentos"
        let latDelta4:CLLocationDegrees = 18.8125708
        let lonDelta4:CLLocationDegrees = -99.2359152
        
        
        
        anotacion4.coordinate = CLLocationCoordinate2DMake(latDelta4, lonDelta4)
        
        
        
        //
        //
        
        var anotacion5 = MKPointAnnotation()
        anotacion5.title="Mariscos El Faro"
        anotacion5.subtitle="Deja aqui tus alimentos"
        let latDelta5:CLLocationDegrees = 18.8059894
        let lonDelta5:CLLocationDegrees = -99.2277255
        
        
        
        anotacion5.coordinate = CLLocationCoordinate2DMake(latDelta5, lonDelta5)
        
        
        
        //

        
        
        self.location.desiredAccuracy = kCLLocationAccuracyBest
        self.location.requestWhenInUseAuthorization()
        self.location.startUpdatingLocation()
        self.mapa.showsUserLocation = true
        
        mapa.addAnnotation(anotacion2)
        mapa.addAnnotation(anotacion3)
        mapa.addAnnotation(anotacion4)
        mapa.addAnnotation(anotacion5)
        anotacion2.coordinate = CLLocationCoordinate2DMake(latDelta2, lonDelta2)
        
        self.location.desiredAccuracy = kCLLocationAccuracyBest
        self.location.requestWhenInUseAuthorization()
        self.location.startUpdatingLocation()
        self.mapa.showsUserLocation = true
        
        mapa.addAnnotation(anotacion2)
        
        //
        
        
        
        
        
        var NuevaRegion = MKCoordinateRegionMakeWithDistance(anotacion.coordinate, 1500, 1500)
        mapa.setRegion(NuevaRegion, animated: true )
        
        
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
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        
       

    }}


