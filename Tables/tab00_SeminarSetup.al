table 50100 "CSD Seminar Setup"
{
    Caption = 'Seminar Setup';
    DataClassification = ToBeClassified;

    fields
    {
        field(10; "Primary Key"; Code[10])
        {
            
            Caption = 'Primary Key';

        }

        field(20; "Seminar Nos."; Code[10])
        {
            caption = 'Seminar Nos.';
            TableRelation = "No. Series";
            

        }
        field(30; "Seminar Registration Nos."; Code[10])
        {
            caption = 'Seminar Registration Nos.';
            TableRelation = "No. Series";

        }
        field(40; "Posted Seminar Reg. Nos."; Code[10])
        {
            caption = 'Posted Seminar Reg. Nos.';
            TableRelation = "No. Series";

        }
    }

    
    keys
    {
        key(PK; "Primary Key")
        {
            Clustered = true;
        }
    }
    
    
    
}