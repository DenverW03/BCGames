var controlAddIn = document.getElementById('controladdin');
var canvas = document.createElement("CANVAS");
canvas.width = 500;
canvas.height = 500;
canvas.id = "canvas";
document.body.appendChild(canvas);

draw();
var canvas = controlAddIn.appendChild(canvas);

function init()
{
    alert('HELLO WORLD!');
}