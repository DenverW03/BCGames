namespace DefaultPublisher.BCGames;

table 50200 Games
{
    DataClassification = ToBeClassified;
    DataCaptionFields = Name;
    Caption = 'Games';

    fields
    {
        field(1; ID; Code[20])
        {
            DataClassification = ToBeClassified;
            Caption = 'ID';
        }

        field(2; Name; Text[50])
        {
            DataClassification = ToBeClassified;
            Caption = 'Name';
        }

        field(3; "Game Type"; Enum "Game Type")
        {
            DataClassification = ToBeClassified;
            Caption = 'Game Type';
        }
    }

    keys
    {
        key(PK; ID)
        {
            Clustered = true;
        }
    }
}