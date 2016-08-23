//
//  ViewController.swift
//  MapView-TP07
//
//  Created by Oteniel on 7/26/16.
//  Copyright © 2016 Oteniel. All rights reserved.
//

import UIKit
import MapKit

class ViewController: UIViewController, CLLocationManagerDelegate {

     let locationManager = CLLocationManager()
    
    @IBOutlet weak var mapaView: MKMapView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        locationManager.delegate = self
        locationManager.requestWhenInUseAuthorization()
        locationManager.startUpdatingLocation()
        self.mapaView.showsUserLocation = true
        
        let pin = MKPointAnnotation()
        pin.coordinate = CLLocationCoordinate2D(latitude: -23.0257157, longitude: -43.4581932)
        pin.title = "Recreio dos Bandeirantes"
        pin.subtitle = "Praia número 2 - Posto 10"
        self.mapaView.addAnnotation(pin)
        
        let pin2 = MKPointAnnotation()
        pin2.coordinate = CLLocationCoordinate2D(latitude: -23.0502031, longitude: -43.5414967)
        pin2.title = "Grumari"
        pin2.subtitle = "Águas limpas - Praia número 1"
        self.mapaView.addAnnotation(pin2)
        
        let pin3 = MKPointAnnotation()
        pin3.coordinate = CLLocationCoordinate2D(latitude: -23.0406251, longitude: -43.507529)
        pin3.title = "Prainha"
        pin3.subtitle = "Águas limpas - Praia número 3"
        self.mapaView.addAnnotation(pin3)
        
    }

    @IBAction func meuLocal(sender: UIButton) {
        
        let coordenada = self.mapaView.userLocation.coordinate
        let regiao = MKCoordinateRegionMakeWithDistance(coordenada, 2000, 2000)
        self.mapaView.setRegion(regiao, animated: true)
        
        let pin = MKPointAnnotation()
        pin.coordinate = CLLocationCoordinate2D(latitude: -22.8846191, longitude: -43.606339)
        self.mapaView.addAnnotation(pin)
    }
    
    
    @IBAction func centroRio(sender: UIBarButtonItem) {
        
                var coordenada = CLLocationCoordinate2D()
                    coordenada.latitude = -22.9064916
                    coordenada.longitude = -43.1798228
                let regiao = MKCoordinateRegionMakeWithDistance(coordenada, 1500, 1500)
                self.mapaView.setRegion(regiao, animated: true)
        
        let pin = MKPointAnnotation()
        pin.coordinate = coordenada
        pin.title = "Centro do Rio de Janeiro"
        pin.subtitle = "Largo da Carioca"
        self.mapaView.addAnnotation(pin)
        
        let pin1 = MKPointAnnotation()
        pin1.coordinate = CLLocationCoordinate2D(latitude: -22.8939768, longitude: -43.1794345)
        pin1.title = "Praça Mauá - RJ"
        pin1.subtitle = "Museu do amanhã"
        self.mapaView.addAnnotation(pin1)
        
        let pin2 = MKPointAnnotation()
        pin2.coordinate = CLLocationCoordinate2D(latitude: -22.9370697, longitude: -43.1854716)
        pin2.title = "Palácio Guanabara"
        pin2.subtitle = "Casa de Ladrão, Bandidos e Assassinos"
        self.mapaView.addAnnotation(pin2)

    }
    
    @IBAction func ipanema(sender: UIBarButtonItem) {
        
                var coordenada = CLLocationCoordinate2D()
                    coordenada.latitude = -22.9844355
                    coordenada.longitude = -43.2107586
                let regiao = MKCoordinateRegionMakeWithDistance(coordenada, 1500, 1500)
                self.mapaView.setRegion(regiao, animated: true)
        
        let pin = MKPointAnnotation()
        pin.coordinate = coordenada
        pin.title = "Ipanema"
        pin.subtitle = "Olha que coisa mais linda..."
        self.mapaView.addAnnotation(pin)
        
    }
 
    @IBAction func mudaMapa(sender: UISegmentedControl) {
        
        let index = sender.selectedSegmentIndex
        if index == 0 {
            self.mapaView.mapType = .Standard
        }
        else if index == 1 {
            self.mapaView.mapType = .Satellite
        }
        else {
            self.mapaView.mapType = .Hybrid
        }

    }
    

}

