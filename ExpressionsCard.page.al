page 50111 "Expressions Card"
{
    PageType = Card;
    Caption = 'Expressions Card';
    UsageCategory = Documents;

    layout
    {
        area(Content)
        {
            group("Check if value 1 is greater than value 2")
            {
                field(Value1; Value1)
                {
                    ApplicationArea = All;
                    Caption = 'Value1';
                    ToolTip = 'Value1';
                }
                field(Value2; Value2)
                {
                    ApplicationArea = All;
                    Caption = 'Value2';
                    ToolTip = 'Value';
                }
                field(Result; Result)
                {
                    ApplicationArea = All;
                    Caption = 'Result';
                    ToolTip = 'Result';
                    Editable = false;
                }
            }
        }
    }
    actions
    {
        area(Processing)
        {
            action(Execute)
            {
                ApplicationArea = All;
                Caption = 'Execute';
                Image = ExecuteBatch;
                ToolTip = 'Execute';

                trigger OnAction()
                begin
                    Result := Value1 > Value2;
                end;
            }
        }
    }

    var
        Value1: integer;
        Value2: integer;
        Result: Boolean;
}
