//
//  ViewController.m
//  GoogleMaps
//
//  Created by Michael Vilabrera on 12/29/14.
//  Copyright (c) 2014 Giving Tree. All rights reserved.
//

#import "ViewController.h"
#import <GoogleMaps/GoogleMaps.h>

@interface ViewController ()

@property (strong, nonatomic) GMSMapView *mapView;

@end

@implementation ViewController

/*
 Extremely cumbersome tutorial!
 Be sure to check Google page (incomplete)
 https://developers.google.com/maps/documentation/ios/start
 when you finish instructions, visit Stack Overflow
 http://stackoverflow.com/questions/14744479/google-maps-sdk-for-ios-requires-googlemaps-bundle-to-be-part-of-your-target-und
 */

- (void)viewDidLoad {
    [super viewDidLoad];
    // create a gms camera position that tells map to display Times Square
    // coord 40.7577, -73.9857 at zoom level 6
    GMSCameraPosition *camera = [GMSCameraPosition cameraWithLatitude:40.7577 longitude:-73.9857 zoom:10];
    self.mapView = [GMSMapView mapWithFrame:CGRectZero camera:camera];
    self.mapView.myLocationEnabled = YES;
    self.view = self.mapView;
    
    // create a marker in the center of the map
    GMSMarker *marker = [[GMSMarker alloc] init];
    marker.position = CLLocationCoordinate2DMake(40.7577, -73.9857);
    marker.title = @"Times Square";
    marker.snippet = @"New York City";
    marker.map = self.mapView;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
