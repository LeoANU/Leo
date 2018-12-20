package servlet;

import java.io.IOException;
import java.util.ArrayList;

import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;


@WebServlet("/upload")
@MultipartConfig
public class UploadServlet extends HttpServlet{

    
    private static final long serialVersionUID = 1L;

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException {

        HttpSession session=request.getSession();
        List<String> list=(List<String>)session.getAttribute("files");
        if(list==null){

            list=new ArrayList<String>();
        }    
        
        try {

            Part part=request.getPart("file");
     
            String name=part.getHeader("content-disposition");
         

            String root=request.getServletContext().getRealPath("/upload");
  
            
            String fname=name.substring(name.lastIndexOf("\\")+1, name.length()-1);

       

   
            int filei=list.indexOf(fname);

 

            if (filei>-1) {fname="";
            }else {
   
            list.add(fname);}
     
            session.setAttribute("files", list);
            
            String filename=root+"\\"+fname;
            System.out.println(filename);
            
      
            part.write(filename);
            
            request.setAttribute("info", "saved");
        } catch (Exception e) {
            e.printStackTrace();
            request.setAttribute("info", "failed");
        }
        
        request.getRequestDispatcher("/upload.jsp").forward(request, response);
    }
    
}