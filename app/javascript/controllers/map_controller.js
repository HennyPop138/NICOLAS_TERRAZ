import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static values = {
    apiKey: String,
    markers: Array
  }

  connect() {
    mapboxgl.accessToken = this.apiKeyValue

    this.map = new mapboxgl.Map({
      container: this.element,
      style: "mapbox://styles/mapbox/streets-v10"
    })

    this.#addMarkersToMap()
    this.#fitMapToMarkers()
  }

  #addMarkersToMap() {
    const popup = new mapboxgl.Popup().setHTML("<h3>T.I.P.C.C</h3>" +
    "<p>Terraz Installation Plomberie Chauffage Climatisation<p>" +
    "<p>22 chemin Joseph Aiguier 13009, Marseille</p>" +
    "<p><i class='fa fa-phone'></i>&nbsp;&nbsp;<a href='tel: 07 60 04 25 64'>07 60 04 25 64</a></p>" +
    "<br>")
    new mapboxgl.Marker()
      .setLngLat([ 5.407353, 43.254670 ])
      .setPopup(popup)
      .addTo(this.map)
  }

  #fitMapToMarkers() {
    const bounds = new mapboxgl.LngLatBounds()
    bounds.extend([ 5.407353, 43.254670 ])
    this.map.fitBounds(bounds, { padding: 70, maxZoom: 15, duration: 0 })
  }
}
