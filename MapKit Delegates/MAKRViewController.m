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
#pragma mark UIViewController Methods

- (void)viewDidLoad {
	NSArray *gestureRecognizerArray = nil;
	for (UIView *mapViewSubview in self.mapView.subviews) {
		if (mapViewSubview.gestureRecognizers.count == 0) {
			continue;
		}

		gestureRecognizerArray = mapViewSubview.gestureRecognizers;
		break;
	}
	
	UIPinchGestureRecognizer *pinchGestureRecognizer = nil;
	UIPanGestureRecognizer *panGestureRecognizer = nil;
	for (id gestureRecognizer in gestureRecognizerArray) {
		if (![NSStringFromClass([gestureRecognizer class]) hasPrefix:@"UI"]) {
			continue;
		}
		if ([gestureRecognizer isKindOfClass:[UIPinchGestureRecognizer class]]) {
			pinchGestureRecognizer = gestureRecognizer;
		}
		if ([gestureRecognizer isKindOfClass:[UIPanGestureRecognizer class]]) {
			panGestureRecognizer = gestureRecognizer;
		}
	}
	
	[pinchGestureRecognizer addTarget:self action:@selector(handlePinch:)];
	[panGestureRecognizer addTarget:self action:@selector(handlePan:)];
}

#pragma mark -
#pragma mark MAKRViewController Interface Actions

- (IBAction)handlePinch:(id)sender {
	NSLog(@"%s", __PRETTY_FUNCTION__);
}

- (IBAction)handlePan:(id)sender {
	NSLog(@"%s", __PRETTY_FUNCTION__);
}

#pragma mark -
#pragma mark MKMapViewDelegate Methods

- (void)mapView:(MKMapView *)mapView regionWillChangeAnimated:(BOOL)animated {
	NSLog(@"%s", __PRETTY_FUNCTION__);
}

- (void)mapView:(MKMapView *)mapView regionDidChangeAnimated:(BOOL)animated {
	NSLog(@"%s", __PRETTY_FUNCTION__);
}

@end
