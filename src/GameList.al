namespace DefaultPublisher.BCGames;

page 50202 GameList
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = GameTable;
    CardPageId = GameCard;

    layout
    {
        area(Content)
        {
            repeater(Games)
            {
                field("Game Name"; Rec.GameName)
                {
                    ApplicationArea = All;
                }
            }
        }
    }
}