page 50100 "TestPage"
{

    ApplicationArea = All;
    Caption = 'TestPage';
    PageType = List;
    SourceTable = TestTable;
    UsageCategory = Lists;

    layout
    {
        area(content)
        {
            repeater(General)
            {
                field(EntryNO; Rec.EntryNO)
                {
                    ToolTip = 'Specifies the value of the EntryNO field.';
                    ApplicationArea = All;
                }
                field(Description; Rec.Description)
                {
                    ToolTip = 'Specifies the value of the Description field.';
                    ApplicationArea = All;
                }
                field("Description 2"; Rec."Description 2")
                {
                    ToolTip = 'Specifies the value of the Description 2 field.';
                    ApplicationArea = All;
                }
                field(Name; Rec.Name)
                {
                    ToolTip = 'Specifies the value of the Name field.';
                    ApplicationArea = All;
                }
                field("Name 2"; Rec."Name 2")
                {
                    ToolTip = 'Specifies the value of the Name 2 field.';
                    ApplicationArea = All;
                }
            }
        }
    }

    actions
    {
        Area(Navigation)
        {
            Action("Check License")
            {
                Caption = 'Check License';
                Trigger OnAction()
                Var
                    //CheckLicense: Page CheckLicense;
                    //TestPage: Page TestPage;
                    lTestTable: Record "TestTable";
                Begin
                    gTime := 014400T;
                    gDate := TODAY;
                    gDateTime := CreateDateTime(gDate, gTime);
                    Message('TestDano1');
                    //TestPage.Run;
                    lTestTable.Findset;
                    TaskScheduler.CreateTask(Codeunit::TestCodeunit, Codeunit::TestCodeunit2, True, CompanyName, gDateTime, lTestTable.RecordID);
                End;
            }
        }
    }

    Var
        Email: Codeunit "Email Message";
        gTime: Time;
        gDate: Date;
        gDateTime: DateTime;
}
