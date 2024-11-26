namespace DefaultPublisher.BCGames;
using System.Reflection;

page 50203 GameCard
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;

    SourceTable = GameTable;

    layout
    {
        area(Content)
        {
            group(Info)
            {
                field(GameID; Rec.GameID)
                {

                }

                //field(GameName; Rec.GameName)
                //{

                //}
            }

            usercontrol("Game Setup"; GameSetup)
            {
                ApplicationArea = All;
            }

            group(Info2)
            {
                //field(GameID; Rec.GameID)
                //{

                //}

                field(GameName; Rec.GameName)
                {

                }
            }
        }
    }

    actions
    {
        area(Processing)
        {
            action("Refresh Client Instance")
            {
                ApplicationArea = All;
                Image = Refresh;
                Promoted = true;
                PromotedIsBig = true;
                PromotedCategory = New;

                trigger OnAction()
                var
                    Page_int: Text;
                    Rec_Objects: Record AllObjWithCaption;
                begin
                    Hyperlink(GetUrl(ClientType::Web, CompanyName, ObjectType::Page, 50203))
                end;
            }

            action("Restart Game")
            {
                ApplicationArea = All;
                Image = Refresh;
                Promoted = true;
                trigger OnAction()
                begin
                    CurrPage."Game Setup".chooseGame('Hello there');
                    CurrPage."Game Setup".test(5);
                end;
            }
        }
    }
}