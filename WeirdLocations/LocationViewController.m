//
//  LocationViewController.m
//  WeirdLocations
//
//  Created by Sam Meech-Ward on 2018-03-02.
//  Copyright © 2018 meech-ward. All rights reserved.
//

#import "LocationViewController.h"
@import CoreLocation;
@import MapKit;
@import UIKit;

@interface LocationViewController () <CLLocationManagerDelegate>

@property (nonatomic, strong) CLLocationManager *manager;
@property (weak, nonatomic) IBOutlet MKMapView *mapView;

@end

@implementation LocationViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
  
  self.manager = [[CLLocationManager alloc] init];
  [self.manager requestWhenInUseAuthorization];
  self.manager.delegate = self;
  
  self.mapView.showsUserLocation = YES;
}

- (void)locationManager:(CLLocationManager *)manager didChangeAuthorizationStatus:(CLAuthorizationStatus)status {
  NSLog(@"location authorization status: %i", status);
  
  if (status == kCLAuthorizationStatusAuthorizedWhenInUse) {
    // We're good to go
    [self.manager requestLocation];
  }
}

- (void)locationManager:(CLLocationManager *)manager didUpdateLocations:(NSArray<CLLocation *> *)locations {
  CLLocation *myLocation = locations[0];
  NSLog(@"%@", myLocation);
  
  MKCoordinateRegion region = MKCoordinateRegionMake(myLocation.coordinate, MKCoordinateSpanMake(1.0/111.0, 1.0/111.0));
  
  self.mapView.region = region;
}

- (void)locationManager:(CLLocationManager *)manager didFailWithError:(NSError *)error {
  NSLog(@"Error: %@", error);
}

@end
