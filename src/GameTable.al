namespace DefaultPublisher.BCGames;

table 50100 GameTable
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; GameID; Code[20])
        {
            DataClassification = ToBeClassified;

        }

        field(2; GameName; Code[20])
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