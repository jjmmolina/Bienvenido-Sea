//
//  MapViewController.m
//  Bienvenido Sea
//
//  Created by Jesús Joaquín Martínez Molina on 10/01/13.
//  Copyright (c) 2013 abantic.org. All rights reserved.
//

#import "MapViewController.h"
#import "MyAnnotation.h"

#define METERS_PER_MILE 1609.344

@implementation MapViewController

- (void)didReceiveMemoryWarning{ [super didReceiveMemoryWarning];
}
//
- (void)viewDidLoad
{
    [super viewDidLoad];

    /* Set the map type to Satellite */
    self.myMapView.mapType = MKMapTypeHybrid;//MKMapTypeSatellite;
    
    MKCoordinateRegion newRegion;
    newRegion.center.latitude = 38.203044;
    newRegion.center.longitude = -1.400344;
    newRegion.span.latitudeDelta = 0.112872;
    newRegion.span.longitudeDelta = 0.109863;
    
    [self.myMapView setRegion:newRegion animated:YES];
    
}

- (void)locationManager:(CLLocationManager *)manager didUpdateLocations:(NSArray *)locations
{
    
}
- (BOOL)shouldAutorotateToInterfaceOrientation :(UIInterfaceOrientation)interfaceOrientation{
    return YES;
}



@end
