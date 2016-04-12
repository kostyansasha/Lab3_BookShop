package controller.processors;

import Servlet.Commands;
import exception.DataBaseException;
import model.Book;
import model.OracleDataAccess;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.ArrayList;

/**
 * Created by Фокстрот on 09.04.2016.
 */
public class DetailBook implements GeneralProcess {

    public void process(HttpServletRequest request, HttpServletResponse response) throws  DataBaseException{
        int IdDetail = Integer.valueOf(request.getParameter("IdDetail"));

        Book book = OracleDataAccess.getInstance().getBookById(IdDetail);
        request.getSession().setAttribute("DetailBook", book);

        Commands.forward("/Book.jsp",request,response);
    }

}