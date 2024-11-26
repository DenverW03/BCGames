var controlAddIn = document.getElementById('controlAddIn');
var canvas = document.createElement("CANVAS");
var mouseX;
var mouseY;

canvas.width = 500;
canvas.height = 500;
canvas.id = "canvas";

document.body.appendChild(canvas);
document.addEventListener("mousemove", mouseMoveHandler, false);
document.addEventListener("click", mouseClickHandler);

controlAddIn.appendChild(canvas);

function mouseClickHandler(e) {
    console.log("x: " + mouseX, "y: " + mouseY);
}

function mouseMoveHandler(e) {
    mouseX = e.clientX;
    mouseY = e.clientY;
}