namespace DefaultPublisher.BCGames;

page 50202 GameList
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = Games;

    layout
    {
        area(Content)
        {
            repeater(Games)
            {
                field("Game Name"; Rec.Name)
                {
                    ApplicationArea = All;
                }
            }
        }
    }

    actions
    {
        area(Processing)
        {
            action("Launch Game")
            {
                Caption = 'Launch Game';
                ApplicationArea = All;
                Promoted = true;
                PromotedCategory = Process;
                PromotedIsBig = true;

                trigger OnAction()
                var
                    Game: Record Games;
                    MultipleGameSelectedErr: Label 'You can only select one game to launch';
                begin
                    CurrPage.SetSelectionFilter(Game);
                    Game.Next();

                    if Game.Count = 1 then
                        LaunchGame(Game."Game Type")
                    else
                        Error(MultipleGameSelectedErr);
                end;
            }
        }
    }

    local procedure LaunchGame(Game: Enum "Game Type")
    begin
        case Game of
            "Game Type"::Sand:
                Message('Sand Simulator');
            "Game Type"::Mine:
                Message('MineSweeper');
        end;
    end;
}