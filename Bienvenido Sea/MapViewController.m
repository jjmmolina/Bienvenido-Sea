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

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    //self.view.backgroundColor = [UIColor whiteColor];
    //self.myMapView = [[MKMapView alloc] initWithFrame:self.view.bounds];

    /* Set the map type to Satellite */ 
    self.myMapView.mapType = MKMapTypeHybrid;//MKMapTypeSatellite;
    self.myMapView.autoresizingMask = UIViewAutoresizingFlexibleWidth |
    UIViewAutoresizingFlexibleHeight; /* Add it to our view */
    [self.view addSubview:self.myMapView];
    
    //self.myMapView.showsUserLocation = YES;
    /* Add it to our view */
    [self.view addSubview:self.myMapView];
    /* This is just a sample location  Abaran: 38.204431,-1.398783*/
    CLLocationCoordinate2D location =
        CLLocationCoordinate2DMake(38.204431,-1.398783);
    /* Create the annotation using the location */
    MyAnnotation *annotation =
    [[MyAnnotation alloc] initWithCoordinates:location
                                        title:@"Abarán"
                                     subTitle:@"Día del Niño"];
    /* And eventually add it to the map */
    [self.myMapView addAnnotation:annotation];

}

- (BOOL)shouldAutorotateToInterfaceOrientation :(UIInterfaceOrientation)interfaceOrientation{
    return YES;
}



@end
