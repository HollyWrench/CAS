import mapboxgl from 'mapbox-gl';
import 'mapbox-gl/dist/mapbox-gl.css';

const initMapbox = () => {
  const buildMap = (mapElement) => {
    mapboxgl.accessToken = mapElement.dataset.mapboxApiKey;
    return new mapboxgl.Map({
      container: 'map',
      // style: 'mapbox://styles/mapbox/streets-v10'
      style: 'mapbox://styles/hollywrench/ckt8rrg0i2g6c18mpldb8alke'
    });
  };

  const addMarkersToMap = (map, markers) => {
    markers.forEach((marker) => {
      new mapboxgl.Marker()
        .setLngLat([marker.lng, marker.lat])
        .addTo(map);
    });
  };

  const fitMapToMarkers = (map, markers) => {
    const bounds = new mapboxgl.LngLatBounds();
    markers.forEach(marker => bounds.extend([marker.lng, marker.lat]));
    map.fitBounds(bounds, { padding: 70, maxZoom: 15 });
  };

  const mapElement = document.getElementById('map');
  if (mapElement) {
    const map = buildMap(mapElement);
    const markers = JSON.parse(mapElement.dataset.markers);
    addMarkersToMap(map, markers);
    fitMapToMarkers(map, markers);
  }
};

export { initMapbox };
