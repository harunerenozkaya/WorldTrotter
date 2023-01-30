//
//  MapController.swift
//  WorldTrotter
//
//  Created by Harun on 30.01.2023.
//

import UIKit
import MapKit

class MapController : UIViewController {
    var mapView : MKMapView!
    
    @objc func mapTypeChanged(_ segControl:UISegmentedControl){
        switch segControl.selectedSegmentIndex{
        case 0:
            mapView.mapType = .standard
        case 1:
            mapView.mapType = .hybrid
        case 2:
            mapView.mapType = .satellite
        default:
            break
        }
    }
    
    func loadMapTypeView(){
        let segmentedControl = UISegmentedControl(items: ["Standart","Hybrid","Satellite"])
        segmentedControl.backgroundColor = UIColor.white.withAlphaComponent(0.5)
        segmentedControl.selectedSegmentIndex = 0
        segmentedControl.translatesAutoresizingMaskIntoConstraints = false
        segmentedControl.addTarget(self, action: #selector(MapController.mapTypeChanged(_:)), for: .valueChanged)
        view.addSubview(segmentedControl)
        
        let topConstraint = segmentedControl.topAnchor.constraint(equalTo:view.safeAreaLayoutGuide.topAnchor,constant: 8)
        let leadingConstraint
        = segmentedControl.leadingAnchor.constraint(equalTo: view.layoutMarginsGuide.leadingAnchor)
        let trailingConstraint
        = segmentedControl.trailingAnchor.constraint(equalTo: view.layoutMarginsGuide.trailingAnchor)
    
        topConstraint.isActive = true
        leadingConstraint.isActive = true
        trailingConstraint.isActive = true
    }
    
    override func loadView() {
        mapView = MKMapView()
        view = mapView
        loadMapTypeView()
    }
}
