namespace DefaultPublisher.BCGames;

controladdin GameSetup
{
    StartupScript = './src/sand/Startup.js';
    StyleSheets = './src/sand/Stylesheet.css';
    Scripts = './src/sand/JS.js';

    HorizontalStretch = true;
    HorizontalShrink = false;
    MinimumHeight = 500;
    MaximumHeight = 500;
    MinimumWidth = 500;
    MaximumWidth = 500;
    VerticalStretch = true;
    VerticalShrink = false;

    procedure init();

    // This procedure calls in the Startup.js file, passing a text parameter representing the game name
    procedure chooseGame(s: text);
}