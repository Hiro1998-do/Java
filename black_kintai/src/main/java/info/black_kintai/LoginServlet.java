package info.black_kintai;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
 
/**
 * Servlet implementation class Sample01
 */
public class LoginServlet extends HttpServlet{
private static final long serialVersionUID = 1L;

//　クラス変数
 private String id;
 private String pass;
 // private String status;
 
 
 
    /**
     * @see HttpServlet#HttpServlet()
     */
  public LoginServlet() {       
	  super();
  }


 
public String getId() {
	return id;
}

public void setId(String id) {
	this.id = id;
}

public String getPass() {
	return pass;
}

public void setPass(String pass) {
	this.pass = pass;
}
    
    protected void doPost(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException {
            // TODO Auto-generated method stub
            request.setCharacterEncoding("Windows-31J");
            HttpSession session = request.getSession(true);
            // response.setContentType("text/html; charset=Windows-31J");
            // クラス変数に取得したid,passを格納
         // セッションが無ければ
        	// if (session == null) {
        		 setId(request.getParameter("id"));
                 setPass(request.getParameter("pass"));
        		session = request.getSession(true);
        		session.setAttribute("id",getId());
        		session.setAttribute("pass",getPass());
        		// idとpassが正しければ
        		 if(id.equals("Admin") && pass.equals("p@ss")) {
                 	request.getRequestDispatcher("/Shukkin.jsp").forward(request, response);
                 }
                 else {
      //           	status = "ログイン失敗"       	
                 	request.getRequestDispatcher("/Fail.jsp").forward(request, response);
                 	session.invalidate();
                // }
        		}
            // request.setAttribute("pass",getPass());
     
        }
}
