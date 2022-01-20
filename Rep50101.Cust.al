report 50101 Cust
{
    ApplicationArea = All;
    Caption = 'Cust';
    UsageCategory = ReportsAndAnalysis;
    DefaultLayout = RDLC;
    RDLCLayout = 'Customerext.rdlc';

    dataset
    {
        dataitem(Customer; Customer)
        {
            column(Address; Address)
            {
            }
            column(No; "No.")
            {
            }
            column(Name; Name)
            {
            }
            column(Name2; "Name 2")
            {
            }
            column(CurrencyCode; "Currency Code")
            {
            }
            column(DebitAmount; "Debit Amount")
            {
            }
            column(Comment; Comment)
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
