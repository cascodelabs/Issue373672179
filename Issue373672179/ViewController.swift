import UIKit
import GoogleMaps

class ViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()

        let mapView = GMSMapView()
        mapView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(mapView)
        mapView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        mapView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        mapView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        mapView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true

        mapView.mapType = .satellite
        mapView.camera = GMSCameraPosition(
            target: CLLocationCoordinate2D(latitude: 41.01384, longitude: 28.94966),
            zoom: 18.0
        )
    }
}
