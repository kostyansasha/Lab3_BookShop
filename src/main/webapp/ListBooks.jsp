<%--
    Document   : ListBooks
    Author     : Sasha
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<div class="content">
    <%  final int countBooksOnPages = 10;
        int amountOfBooks = 20; //get
        int countPages = 1;
        if (amountOfBooks > countBooksOnPages) { %>
            <%for (int i = countBooksOnPages * countPages;i > 0; i--) {%>
                <div class="book">
                    <form name="book" method="GET" action="Buy"><p>
                        <b>get name</b>
                        <p align="right">
                        <input type="submit" value="Buy">
                        </p>
                        </p>
                    </form>
                </div>
                <br>
                <br>
            <% }%>
        <%} else {
            for (int i = 0;i < amountOfBooks; i++) {%>
                <div class="book">
                    <form name="book" method="GET" action="Buy">
                    <p>
                        <b>get name</b>
                        <p align="right">
                            <input type="submit" value="Buy">
                        </p>
                    </p>
                    </form>
                </div>
                <br>
            <% } %>
        <% } %>
</div>