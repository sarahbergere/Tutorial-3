package experiment.tutorial3;

import java.io.*;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

@WebServlet(name = "saveProject", value = "/save-project")
@MultipartConfig
public class SaveProject extends HttpServlet {

    public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        //Retrieval of the inputs of the form
        String id = request.getParameter("idProject");
        String title = request.getParameter("titleInput");
        Part filePart = request.getPart("image");
        String fileName = filePart.getSubmittedFileName();
        String description = request.getParameter("description");
        String myPart = request.getParameter("myPart");
        String learned = request.getParameter("learned");
        String technologies = request.getParameter("technologies");

        //String into an array
        String[] technologiesArray = technologies.split(",");

        //Creation of the object where we put the information of the edited version of the project
        Project newProject = new Project(id, title, fileName, description, myPart, learned, technologiesArray);

        //I then put all of the information in the request so that I can access them in the JSP page
        request.setAttribute("id", newProject.id);
        request.setAttribute("title", newProject.title);
        request.setAttribute("image", newProject.image);
        request.setAttribute("description", newProject.description);
        request.setAttribute("myPart", newProject.myPart);
        request.setAttribute("learned", newProject.learned);
        request.setAttribute("technologies", newProject.technologies);

        //Redirect to the confirmation page
        request.getRequestDispatcher("/confirmationSave.jsp").forward(request, response);
    }
}