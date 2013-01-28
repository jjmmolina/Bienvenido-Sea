//
//  MapViewController.m
//  Bienvenido Sea
//
//  Created by Jesús Joaquín Martínez Molina on 10/01/13.
//  Copyright (c) 2013 abantic.org. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>
#import "MapViewController.h"
//#import "MyAnnotation.h"

@implementation MapViewController

@synthesize mapView;
- (void)viewDidLoad
{
   
    self.mapView.showsUserLocation = YES;
    /* Set the map type to Satellite */
   // self.myMapView.mapType = MKMapTypeHybrid;//MKMapTypeSatellite;
    
    CLLocationCoordinate2D annotationCoord;
    annotationCoord.latitude = 38.203044;
    annotationCoord.longitude = -1.400344;
    
    MKPointAnnotation *annotationPoint = [[MKPointAnnotation alloc] init];
    annotationPoint.coordinate = annotationCoord;
    annotationPoint.title = @"Curso ios";
    annotationPoint.subtitle = @"Tenerife";
    
    [self.mapView addAnnotation:annotationPoint];
    
    CLLocationCoordinate2D center;
    center.latitude = 38.203044;
    center.longitude = -1.400344;
    
    MKCoordinateRegion region;
    region.center = center;
    region.span.latitudeDelta = 1;
    region.span.longitudeDelta = 1;
    
    self.mapView.showsUserLocation = YES;
    [self.mapView setRegion:region animated:YES];
   
    
     [super viewDidLoad];
}

- (void)zoomIn: (id)sender
{
    MKUserLocation *userLocation = mapView.userLocation;
    MKCoordinateRegion region =
    MKCoordinateRegionMakeWithDistance (userLocation.location.coordinate, 50, 50);
    [mapView setRegion:region animated:NO];
}

@end
