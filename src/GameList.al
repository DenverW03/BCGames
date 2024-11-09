namespace DefaultPublisher.BCGames;

page 50102 GameList
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = GameTable;

    layout
    {
        area(Content)
        {
            group(GroupName)
            {
                field("Game Name"; Rec.GameName)
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
            action(ActionName)
            {

                trigger OnAction()
                begin

                end;
            }
        }
    }

    var
        myInt: Integer;
}