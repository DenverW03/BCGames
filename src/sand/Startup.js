var controlAddIn = document.getElementById('controlAddIn');
var canvas = document.createElement("CANVAS");
canvas.width = 500;
canvas.height = 500;
canvas.id = "canvas";
document.body.appendChild(canvas);

var mouseX;
var mouseY;


document.addEventListener("mousemove", mouseMoveHandler, false);

// Handler updates the global var mouse coords
function mouseMoveHandler(e) {
    mouseX = e.clientX;
    mouseY = e.clientY;
}

var canvas = controlAddIn.appendChild(canvas);

function init() {
    alert('HELLO WORLD!');
}