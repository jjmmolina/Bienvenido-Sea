//
//  MyAnnotation.m
//  Bienvenido Sea
//
//  Created by Jesús Joaquín Martínez Molina on 16/01/13.
//  Copyright (c) 2013 abantic.org. All rights reserved.
//

#import "MyAnnotation.h"

@implementation MyAnnotation

- (id) initWithCoordinates:(CLLocationCoordinate2D)paramCoordinates
                    title:(NSString *)paramTitle
                  subTitle:(NSString *)paramSubTitle{
    self = [super init];
    if (self != nil){
        _coordinate = paramCoordinates; _title = paramTitle;
        _subtitle = paramSubTitle;
    }
    return(self);
}
@end
