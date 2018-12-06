pageextension 50100 "CSD Resource Card Extension" extends "Resource Card"
// CSD Version
{
    layout
    {
        addlast(General)
        {
            field("CSD Resource Type"; "CSD Resource Type")
            {

            }
            field("CSD Quantity Per Day"; "CSD Quantity Per Day")
            {

            }
        }
        addafter("Personal Data")
        {
            group("CSD Room")
            {
                Caption = 'Room';
                field("CSD Maximum Participants"; "CSD Maximum Participants")
                {

                }
            }
        }
    }

    actions
    {
        // Add changes to page actions here
    }

    var
        ShowRoom: Boolean;
}