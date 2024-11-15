var controlAddIn = document.getElementById('controlAddIn');
controlAddIn.style.backgroundColor = "orange"; // change to edit background color variable

var canvas = document.createElement("CANVAS");
canvas.width = 500;
canvas.height = 500;
canvas.id = "canvas";
document.body.appendChild(canvas);

var mouseX;
var mouseY;


document.addEventListener("mousemove", mouseMoveHandler, false);
document.addEventListener("click", mouseClickHandler);

function mouseClickHandler(e) {
    console.log("x: " + mouseX, "y: " + mouseY);
}

// Handler updates the global var mouse coords
function mouseMoveHandler(e) {
    mouseX = e.clientX;
    mouseY = e.clientY;
}



var canvas = controlAddIn.appendChild(canvas);

function init() {
    alert('HELLO WORLD!');
}