report 50100 TestReport
{
    ApplicationArea = All;
    Caption = 'TestReport';
    UsageCategory = ReportsAndAnalysis;
    DefaultLayout = Word;
    WordLayout = 'Customerdetail.Docx';
    dataset
    {
        dataitem(TestTable; TestTable)
        {
            column(EntryNO; EntryNO)
            {
            }
            column(Description; Description)
            {
            }
            column(Description2; "Description 2")
            {
            }
            column(Name; Name)
            {
            }
            column(Name2; "Name 2")
            {
            }
        }
    }
    requestpage
    {
        layout
        {
            area(content)
            {
                group(GroupName)
                {
                }
            }
        }
        actions
        {
            area(processing)
            {
            }
        }
    }
}
