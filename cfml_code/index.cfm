<cfscript>
    application.counter++;
    writeOutput("This instance of this function have been executed in lambda: " & application.counter & " times.")
    loopLength = server.system.environment.FOR_LOOP_LENGTH;
    qry = queryNew("id,foo", "integer,varchar");
    for(i=1; i<loopLength; i++){
        queryAddRow(qry);
        querySetCell(qry, "id", i);
        querySetCell(qry, "foo", toBase64(hash("bar" & i), "utf-8"));
    }
    writeDump(qry);
</cfscript>