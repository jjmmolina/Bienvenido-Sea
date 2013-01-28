//
//  MapViewController.h
//  Bienvenido Sea
//
//  Created by Jesús Joaquín Martínez Molina on 10/01/13.
//  Copyright (c) 2013 abantic.org. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>

@interface MapViewController : UIViewController <MKMapViewDelegate>{
    MKMapView *mapView;
}

@property (strong, nonatomic) IBOutlet MKMapView *mapView;

@end
