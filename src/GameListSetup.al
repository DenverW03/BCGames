namespace DefaultPublisher.BCGames;

codeunit 50101 Setup
{
    Subtype = Install;

    trigger OnInstallAppPerCompany()
    var
        Game: Record GameTable;
    begin
        if Game.IsEmpty then begin
            InsertAllGames();
        end;
    end;

    procedure InsertAllGames()
    begin
        InsertSingleGame('SAND', 'Falling Sand Simulation');
    end;

    procedure InsertSingleGame(ID: Code[20]; Name: Text[50])
    var
        Game: Record GameTable;
    begin
        Game.Init();
        Game.GameID := ID;
        Game.GameName := Name;
        Game.Insert();
    end;

}