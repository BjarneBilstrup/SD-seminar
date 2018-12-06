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
        field(50101; "CSD Resource Type"; Option
        {
            DataClassification = CustomerContent;
             = FieldPropertyValue;
        }
    }

    var
        myInt: Integer;
}