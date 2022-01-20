codeunit 50100 TestCodeunit
{
    trigger OnRun()
    Var
        lTestTable: Record "TestTable";
        lEntryNo: Integer;
        //lEmail: Codeunit "Email Message";
        lTempBlob: Codeunit "Temp Blob";
        lCount: Integer;
    begin
        lCount += 1;
        //SaveDocumentAsPDFtoStream(TempBlog, 50140);

        IF lTestTable.FINDLAST THEN
            lEntryNo := lTestTable.EntryNO
        else
            lEntryNo := 1;

        //IF lCount = 3 THEN BEGIN
        IF lTestTable.Get(1) THEN BEGIN
            lTestTable.Description := 'SUcceed3';
            lTestTable."Description 2" += Format(lCount);
            lTestTable.Modify;
            Commit;
        End;
        //END;


        lTestTable.RESET;
        IF lTestTable.GET(3) then begin
            IF lTestTable.NAme = 'eeee' THEN
                Error('Test');
        End;
    end;

}
