<html>
    <body>
        <%def name="buildtable()">
            <table>
                <tr><td>
                    ${caller.body()}
                </td></tr>
            </table>
        </%def>

        <%call expr="buildtable()">
            I am the table body.
        </%call>

        ${self.body()}
    </body>
</html>
