## Mapkit

* Native framework.
* Maps in your apps
* Uses apple maps
* If you want to use google maps use `GoogleMapsKit` Also know as Google Maps iOS framework. An alternative to mapkit.
* View map data, display pins for specific locations. Routes, geographic locations. 

Panning to a location

* We have to set the map's `region`, `<#(MKCoordinateRegion)#>`

### Annotations

* Are how we display points on a map.
* We have to have an object, any object, any old object, that conforms to the `MKAnnotation` protocol.
* 
* Pass that object to maps, and then customize if you like, that's it.

## Core Location

* Location services.
* Gps **coordinate** for the user.
* Accuracy of the **coordinates**
* Calculate distance between locations
* Includes data specific to modes of transportation. 
* Tracking, constantly getting the user's location.
* speed
* direction
* altitude
* tracking through wifi and ibeacons. d

* Power, privacy

* Privacy:
  * Always.
  * When using.

* Power:
  * One time location
  * Track user's location based on..... 

* If we call `requestLocation` we get a single location in the delegate method.
* if we call [`startLocationUpdates`](https://developer.apple.com/documentation/corelocation/cllocationmanager/1423750-startupdatinglocation?language=objc) then we can get multiple location objects in each delegate method call.

## Info.plist

* it's a file in Xcode
* It's kind of like a dictionary of some sort. xml
* It's a very important file.
* Use it so you can access unsafe sites, so `http` instead of `https`

## Geocoding

* place to coordinates and coordinates to place

* reverse geocoding given coordinates, return address, or maybe array of potential addresses. 
* geocoding input a place's name / address, and returns the coordinates.

`CLLocationGeocoder`

https://developer.apple.com/documentation/corelocation/converting_between_coordinates_and_user_friendly_place_names?language=objc

---

## Links

* [Location Quickstart](https://github.com/codepath/ios_guides/wiki/Location-Quickstart)
* [Maps](https://github.com/codepath/ios_guides/wiki/Maps)
