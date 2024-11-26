class FallingSand {
    constructor() {
        console.log("class constructor called");
        //this.drawRect();
        var root = document.querySelector(':root');
        root.style.setProperty('--bg-color', 'orange');

    }

    drawRect() {
        // Set line width
        ctx.lineWidth = 10;

        // Stroke rect outline
        ctx.strokeRect(50, 50, 150, 100);
    }

    hello() {
        console.log("Hello World!");
    }
}