function chooseGame(gameName) {
    console.log("Let's play some " + gameName + "!");

    switch(gameName) {
        case 'MineSweeper':
            console.log("Starting MineSweeper!");
            const mineSweeper = new MineSweeper();
            break;
        case 'Falling Sand Simulation':
            console.log("Starting the Falling Sand Simulation!");
            const fallingSand = new FallingSand();
            break;
    }
}
