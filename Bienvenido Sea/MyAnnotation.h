//
//  MyAnnotation.h
//  Bienvenido Sea
//
//  Created by Jesús Joaquín Martínez Molina on 16/01/13.
//  Copyright (c) 2013 abantic.org. All rights reserved.
//


#import <Foundation/Foundation.h> 
#import <MapKit/MapKit.h>
@interface MyAnnotation : NSObject <MKAnnotation>
@property (nonatomic, readonly) CLLocationCoordinate2D coordinate;
@property (nonatomic, copy, readonly) NSString *title;
@property (nonatomic, copy, readonly) NSString *subtitle;
- (id) initWithCoordinates:(CLLocationCoordinate2D)paramCoordinates
    title:(NSString *)paramTitle
    subTitle:(NSString *)paramSubTitle;
@end
