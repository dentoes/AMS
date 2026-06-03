let map = L.map('map').setView([-23.5505,-46.6333], 13);

L.tileLayer(
'https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png',
{
maxZoom:19
}).addTo(map);

const drones = [
{
id:1,
nome:"Drone Alpha",
lat:-23.5480,
lng:-46.6300
},
{
id:2,
nome:"Drone Beta",
lat:-23.5550,
lng:-46.6400
},
{
id:3,
nome:"Drone Gamma",
lat:-23.5450,
lng:-46.6200
}
];

function distancia(lat1,lng1,lat2,lng2){

let R = 6371;

let dLat = (lat2-lat1) * Math.PI/180;
let dLng = (lng2-lng1) * Math.PI/180;

let a =
Math.sin(dLat/2) * Math.sin(dLat/2) +
Math.cos(lat1*Math.PI/180) *
Math.cos(lat2*Math.PI/180) *
Math.sin(dLng/2) *
Math.sin(dLng/2);

let c = 2 * Math.atan2(Math.sqrt(a),Math.sqrt(1-a));

return R*c;
}

drones.forEach(drone => {

L.marker([drone.lat,drone.lng])
.addTo(map)
.bindPopup("🚁 "+drone.nome);

});

function localizarUsuario(){

navigator.geolocation.getCurrentPosition(posicao => {

let usuarioLat = posicao.coords.latitude;
let usuarioLng = posicao.coords.longitude;

L.marker([usuarioLat,usuarioLng])
.addTo(map)
.bindPopup("🏠 Sua Casa")
.openPopup();

map.setView([usuarioLat,usuarioLng],15);

let droneMaisProximo = null;
let menorDistancia = Infinity;

drones.forEach(drone => {

let dist = distancia(
usuarioLat,
usuarioLng,
drone.lat,
drone.lng
);

if(dist < menorDistancia){

menorDistancia = dist;
droneMaisProximo = drone;

}

});

document.getElementById("status").innerHTML =
`
🚁 Drone selecionado:
<b>${droneMaisProximo.nome}</b>
<br>
📍 Distância:
${menorDistancia.toFixed(2)} km
<br><br>
♻️ Coleta agendada com sucesso!
`;

L.polyline(
[
[usuarioLat,usuarioLng],
[droneMaisProximo.lat,droneMaisProximo.lng]
],
{
color:"green",
weight:5
}
).addTo(map);

});

}