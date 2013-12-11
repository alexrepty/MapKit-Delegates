MapKit Delegates
================

Purpose
-------

Originally a piece of sample code for my talk entitled "[What You Absolutely Cannot Do With MapKit](http://cloud.alexrepty.com/3R330m053t1J)", this example serves to illustrate how to make an `MKMapView`'s internal `UIGestureRecognizer` objects work for you.

Explanation
-----------

Normally, `MKMapView` provides no way to get continuous updates about user interaction within the view, i.e. panning and pinching. The `MKMapViewDelegate` methods for this behaviour (`-mapView:regionWillChangeAnimated:` and `-mapView:regionDidChangeAnimated:`) only get called once per user interaction.

Scope
-----

The included Xcode project is ready to build in Xcode 5 and iOS 7.
