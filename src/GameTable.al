namespace DefaultPublisher.BCGames;

table 50200 GameTable
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; GameID; Code[20])
        {
            DataClassification = ToBeClassified;

        }

        field(2; GameName; Text[50])
        {
            DataClassification = ToBeClassified;

        }

    }

    keys
    {
        key(PK; GameID)
        {
            Clustered = true;
        }
    }
}