import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class SmallMapView extends StatelessWidget {
  final Set<Marker> markers;
  final CameraPosition initialPosition;

  const SmallMapView({
    super.key,
    required this.markers,
    required this.initialPosition,
  });

  @override
  Widget build(BuildContext context) {
    return GoogleMap(
      initialCameraPosition: initialPosition,
      markers: markers,
      zoomControlsEnabled: false,
      myLocationButtonEnabled: false,
      myLocationEnabled: false,
    );
  }
}
