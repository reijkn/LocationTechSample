// import './style.css'
import maplibregl from 'maplibre-gl';
import 'maplibre-gl/dist/maplibre-gl.css';

const cmap = new maplibregl.Map({
  container: 'map',
  zoom: 5,
  center: [138, 37],
  minZoom: 5,
  maxZoom: 18,
  maxBounds: [122, 20, 154, 50],
  style: {
    version: 8,
    sources: {
      osm: {
        type: 'raster',
        tiles: ['https://tile.openstreetmap.org/{z}/{x}/{y}.png'],
        maxzoom: 19,
        tileSize: 256,
        attribution:
        '&copy; <a href="http://www.openstreetmap.org/copyright">OpenStreetMap</a> contirbutors',
      },
    },
    layers: [
      {
        id: 'osm-layer',
        source: 'osm',
        type: 'raster',
      },
    ]
  }

})