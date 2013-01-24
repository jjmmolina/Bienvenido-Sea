//
//  MapViewController.m
//  Bienvenido Sea
//
//  Created by Jesús Joaquín Martínez Molina on 10/01/13.
//  Copyright (c) 2013 abantic.org. All rights reserved.
//

#import "MapViewController.h"
#import "MyAnnotation.h"

@implementation MapViewController

- (void)didReceiveMemoryWarning{ [super didReceiveMemoryWarning];
}
//
- (void)viewDidLoad
{
    [super viewDidLoad];

    /* Set the map type to Satellite */
    self.myMapView.mapType = MKMapTypeHybrid;//MKMapTypeSatellite;
        
    // Creamos una coordenada inicial, en nuestro caso perteneciente a Valencia.
    CLLocationCoordinate2D initialLocation;
    initialLocation.latitude = 38.203044;
    initialLocation.longitude= -1.400344;
    
    // Esto situará el centro del mapa en Abarán con la distancia de región que establezcamos.
    MKCoordinateRegion region = MKCoordinateRegionMakeWithDistance(initialLocation, 200, 200);
    
    [self.myMapView setRegion:region animated:YES];
    
    
}
/*
- (void)locationManager:(CLLocationManager *)manager didUpdateLocations:(NSArray *)locations
{
    
}
- (BOOL)shouldAutorotateToInterfaceOrientation :(UIInterfaceOrientation)interfaceOrientation{
    return YES;
}

*/

@end
