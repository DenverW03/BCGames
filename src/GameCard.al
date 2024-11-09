namespace DefaultPublisher.BCGames;
using System.Reflection;

page 50203 GameCard
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;

    layout
    {
        area(Content)
        {
            usercontrol("Falling Sand"; FallingSand)
            {
                ApplicationArea = All;
            }
        }
    }

    actions
    {
        area(Processing)
        {
            action(Refresh)
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

            action(init)
            {
                ApplicationArea = All;
                Image = Refresh;
                Promoted = true;
                trigger OnAction()
                begin
                    CurrPage."Falling Sand".Init();
                end;
            }
        }
    }
}