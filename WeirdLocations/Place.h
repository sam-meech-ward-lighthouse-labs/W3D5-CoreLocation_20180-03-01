//
//  Place.h
//  WeirdLocations
//
//  Created by Sam Meech-Ward on 2018-03-02.
//  Copyright © 2018 meech-ward. All rights reserved.
//

#import <Foundation/Foundation.h>
@import MapKit;

/**
 Place is an object that stores data about a place, duh.
 */
@interface Place : NSObject <MKAnnotation>

/// Use this property to define where the place will appear on the map.
@property (nonatomic) CLLocationCoordinate2D coordinate;

/// This title will be displayed on a map.
@property (nonatomic, copy, nullable) NSString *title;

@end
