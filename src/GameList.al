namespace DefaultPublisher.BCGames;

page 50101 GameList
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
                field(Name; rec.GameName)
                {

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