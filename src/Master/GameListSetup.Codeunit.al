namespace DefaultPublisher.BCGames;

codeunit 50201 Setup
{
    Subtype = Install;

    trigger OnInstallAppPerCompany()
    var
        Game: Record Games;
    begin
        if Game.IsEmpty then begin
            InsertAllGames();
        end;
    end;

    procedure InsertAllGames()
    begin
        InsertSingleGame('SAND', 'Falling Sand Simulation', "Game Type"::Sand);
        InsertSingleGame('MINE', 'MineSweeper', "Game Type"::Mine);
    end;

    procedure InsertSingleGame(ID: Code[20]; Name: Text[50]; "Game Type": Enum "Game Type")
    var
        Game: Record Games;
    begin
        Game.Init();
        Game.ID := ID;
        Game.Name := Name;
        Game."Game Type" := "Game Type";
        Game.Insert();
    end;

}