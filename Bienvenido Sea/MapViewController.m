//
//  MapViewController.m
//  Bienvenido Sea
//
//  Created by Jesús Joaquín Martínez Molina on 10/01/13.
//  Copyright (c) 2013 abantic.org. All rights reserved.
//

#import "MapViewController.h"

//@interface MapViewController ()

//@property (nonatomic, weak) IBOutlet MKMapView *mapView;
//@property (nonatomic, strong) CLGeocoder *geocoder;
//@property (nonatomic, strong) MKPlacemark *placemark;

//@end

@implementation MapViewController

- (void)didReceiveMemoryWarning{ [super didReceiveMemoryWarning];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    self.view.backgroundColor = [UIColor whiteColor];
    self.myMapView = [[MKMapView alloc] initWithFrame:self.view.bounds];

    /* Set the map type to Satellite */
    self.myMapView.mapType = MKMapTypeHybrid;//MKMapTypeSatellite;
    self.myMapView.autoresizingMask = UIViewAutoresizingFlexibleWidth |
    UIViewAutoresizingFlexibleHeight; /* Add it to our view */
    [self.view addSubview:self.myMapView];
    
    self.myMapView.showsUserLocation = YES;

}

- (BOOL)shouldAutorotateToInterfaceOrientation :(UIInterfaceOrientation)interfaceOrientation{
    return YES;
}



@end
