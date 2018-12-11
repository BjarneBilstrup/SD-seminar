pageextension 50101 "CSD ResourceListExt" extends "Resource List"
// Ad something to Resource list
{
    layout
    {
        modify(Type)
        {
            visible = showtype;
        }
        addafter("type")
        {
            field("CSD Resource Type"; "CSD Resource Type")
            {

            }
            field("CSD Maximum Participants"; "CSD Maximum Participants")
            {

            }
            field("CSD Quantity Per Day"; "CSD Quantity Per Day")
            {
                Visible = ShowMaxField;
            }
        }

    }

    actions
    {
        // Add changes to page actions here
    }
    trigger OnOpenPage()
    begin
        ShowType := (getfilter(type) = '');
        ShowMaxField := getfilter(type) = format(type::Machine);
    end;

    var
        [InDataSet]
        ShowMaxField: Boolean;
        [InDataSet]
        ShowType: Boolean;
}