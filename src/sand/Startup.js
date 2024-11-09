var controlAddIn = document.getElementById('controlAddIn');
var canvas = document.createElement("CANVAS");
canvas.width = 500;
canvas.height = 500;
canvas.id = "canvas";
document.body.appendChild(canvas);

var canvas = controlAddIn.appendChild(canvas);

function init()
{
    alert('HELLO WORLD!');
}