package info.white_kintai;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
 
/**
 * Servlet implementation class Sample01
 */
public class TimeServlet extends HttpServlet{
private static final long serialVersionUID = 1L;


// TimeOperationのインスタンス生成
TimeOperation to = new TimeOperation();

//　クラス変数
private String start_time;
private String end_time;
private int work_date;
private int[] work_time = new int[3];


 
 
    /**
     * @see HttpServlet#HttpServlet()
     */
//  public LoginServlet() {       
//	  super();
//   }

	/**
     * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
     */
//    protected void doGet(HttpServletRequest request, HttpServletResponse response)
//        throws ServletException, IOException {
// 
//        request.setCharacterEncoding("Windows-31J");
//        response.setContentType("text/html; charset=Windows-31J");
//        PrintWriter out = response.getWriter();
// 
//        out.println("<html>");
//        out.println("<head>");
//        out.println("<title>SampleServlet</title>");
//        out.println("</head>");
//        out.println("<body>");
//        out.println("<h1>HelloServlet</h1>");
//        out.println("</body>");
//        out.println("</html>");
//    }
    
protected void doPost(HttpServletRequest request, HttpServletResponse response) 
        throws ServletException, IOException {
        // TODO Auto-generated method stub
	    
        request.setCharacterEncoding("Windows-31J");
        
        // セッション
        HttpSession session = request.getSession();
        
        // 出勤ページで出勤と押された場合
        if(session.getAttribute("start") == "start") {
        	// 出勤日時を変数start_timeに格納
        	to.setStart(to.getDate());
        	start_time = to.getStart();
        	
        	// start_timeをセッション情報に格納
            session.setAttribute("start_time",start_time);
            // start_time = (String)session.getAttribute("start_time");
            request.getRequestDispatcher("/Taikin.jsp").forward(request, response);
            session.removeAttribute("start");
        }else {
        	to.setEnd(to.getDate());
        	end_time = to.getEnd();
        	session.setAttribute("end_time", end_time);
        	
        	start_time = start_time.substring(8);
        	end_time = end_time.substring(8);
        	
        	work_date = to.getWorkDate(start_time, end_time);
        	work_time = to.getWorkTime(start_time, end_time);
            
            request.setAttribute("work_date",work_date);
            request.setAttribute("work_hour",work_time[0]);
            request.setAttribute("work_min",work_time[1]);
            request.setAttribute("work_sec",work_time[2]);
            request.getRequestDispatcher("/Logout.jsp").forward(request, response);
            
            session.invalidate();
        }
        
    		}
        // request.setAttribute("pass",getPass());


 
    }
