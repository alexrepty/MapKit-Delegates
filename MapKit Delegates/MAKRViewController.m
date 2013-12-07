//
//  MAKRViewController.m
//  MapKit Delegates
//
//  Created by Alexander Repty on 07.12.13.
//  Copyright (c) 2013 alexrepty. All rights reserved.
//

#import "MAKRViewController.h"

@implementation MAKRViewController

#pragma mark -
#pragma mark MKMapViewDelegate Methods

- (void)mapView:(MKMapView *)mapView regionWillChangeAnimated:(BOOL)animated {
	NSLog(@"%s", __PRETTY_FUNCTION__);
}

- (void)mapView:(MKMapView *)mapView regionDidChangeAnimated:(BOOL)animated {
	NSLog(@"%s", __PRETTY_FUNCTION__);
}

@end
