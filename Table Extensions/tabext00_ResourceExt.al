tableextension 50100 "CSD ResourceExt" extends Resource
{
    fields
    {
        modify("Profit %")
        {
            trigger OnAfterValidate()
            begin
                Rec.TestField("Unit Cost");
            end;
        }
        modify(Type)
        {
            OptionCaption = 'Instructor,Room';

        }
        field(50101; "CSD Resource Type"; Option)
        {
            DataClassification = CustomerContent;
            OptionMembers = "Internal","External";
            OptionCaption = 'Internal,External';
            Caption = 'Resource Type';
        }
        field(50102; "CSD Maximum Participants"; Integer)
        {
            DataClassification = CustomerContent;
            Caption = 'Maximum Participants';
        }
        field(50103; "CSD Quantity Per Day"; Decimal)
        {
            DataClassification = CustomerContent;
            caption = 'Quantity Per Day';
        }
    }


}