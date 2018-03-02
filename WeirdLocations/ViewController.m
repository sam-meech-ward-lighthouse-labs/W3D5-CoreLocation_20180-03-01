//
//  ViewController.m
//  WeirdLocations
//
//  Created by Sam Meech-Ward on 2018-03-02.
//  Copyright © 2018 meech-ward. All rights reserved.
//

#import "ViewController.h"
@import MapKit;
#import "Place.h"

@interface ViewController () <MKMapViewDelegate>

@property (weak, nonatomic) IBOutlet MKMapView *mapView;

@end

@implementation ViewController

- (void)viewDidLoad {
  [super viewDidLoad];
  // Do any additional setup after loading the view, typically from a nib.
  
  CLLocationCoordinate2D location = CLLocationCoordinate2DMake(48.858596, 2.294535);
  CLLocationDegrees deltas = 2.0/111.0;
  MKCoordinateSpan span = MKCoordinateSpanMake(deltas, deltas);
  
  MKCoordinateRegion region = MKCoordinateRegionMake(location, span);
  [self.mapView setRegion:region];
  self.mapView.mapType = MKMapTypeHybridFlyover;
  
  [self.mapView registerClass:[MKPinAnnotationView class] forAnnotationViewWithReuseIdentifier:@"pinny"];
  
  // Annotation
  Place *dolphinfePlace = [[Place alloc] init];
  dolphinfePlace.title = @"Dolphinfe";
  dolphinfePlace.coordinate = CLLocationCoordinate2DMake(48.862684, 2.291163);
  
  [self.mapView addAnnotation:dolphinfePlace];
  self.mapView.delegate = self;
}

- (MKAnnotationView *)mapView:(MKMapView *)mapView viewForAnnotation:(id<MKAnnotation>)annotation {
  
  MKPinAnnotationView *annotationView = (MKPinAnnotationView *)[mapView dequeueReusableAnnotationViewWithIdentifier:@"pinny" forAnnotation:annotation];
  if (annotationView) {
    annotationView = [[MKPinAnnotationView alloc] initWithAnnotation:annotation reuseIdentifier:@"pinny"];
  }
  
  // Do any customization
  annotationView.canShowCallout = YES;
  
  return annotationView;
}


- (void)didReceiveMemoryWarning {
  [super didReceiveMemoryWarning];
  // Dispose of any resources that can be recreated.
}


@end
