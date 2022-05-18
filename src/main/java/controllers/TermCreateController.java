package controllers;

import database.DBManager;
import entity.Discipline;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "TermCreateController", urlPatterns = "/term-create")
public class TermCreateController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        DBManager manager = new DBManager();
        List<Discipline> disciplines = manager.getAllActivDisciplenes();
        req.setAttribute("disciplines", disciplines);
        req.getRequestDispatcher("JSP/term-create.jsp").forward(req, resp);

    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String[] ids = req.getParameterValues("idsDisc");
        String duration = req.getParameter("duration");

        DBManager manager = new DBManager();
        String lastName = manager.getLastTermName();
        String[] parts = lastName.split(" ");
        String newName = "Семестр " + (Integer.parseInt(parts[1])+1);

        manager.createNewTerm(newName, duration, ids);
        resp.sendRedirect("/terms");

    }
}
