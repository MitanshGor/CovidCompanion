package Controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.mysql.cj.Session;

import Bean.HospitalBean;
import Bean.HospitalBedBean;
import Dao.HospitalDao;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet 
{
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		String Email=request.getParameter("Email").trim();
		String Contact=request.getParameter("ContactNo").trim();
		String Password =request.getParameter("Password").trim();
//		System.out.println("1-----------------------------------REached Here");
		System.out.println(Password+"2sfdbaegbewgheteggggggggg\n");
		
		int id=Dao.HospitalDao.getIdOf(Email, Password, Contact);
		System.out.println("2-----------------------------------REached Here"+id);
		
		if(id>0)
		{
			System.out.println("3-----------------------------------REached Here");
			HospitalBedBean hbb= HospitalDao.getHospitalBedData(id);
			HospitalBean  hb=HospitalDao.getHospitalData(id);
			
			HttpSession session =request.getSession();//gSession();
			session.setAttribute("SessionHospitalBean", hb);
			session.setAttribute("SessionHospitalBedBean", hbb);
				
			//			session.setAttribute("Id",id);
//			session.setAttribute("HospitalName", hb.getHospName());
//			session.setAttribute("HospitalEmail", hb.getEmail());
//			session.setAttribute("HospitalPassword", hb.getPassword());
//			session.setAttribute("HospitalContactNo", hb.getContactNo());
//			session.setAttribute("HospitalCity", hb.getCity());
//			session.setAttribute("HospitalPincode", hb.getPincode());
//			session.setAttribute("HospitalGST", hb.getGST());
//			
//			System.out.println("4-----------------------------------REached Here");
//				
//			session.setAttribute("HospitalIsolation", hbb.getTotalIsolation());
//			session.setAttribute("HospitalVacentIsolation", hbb.getVacentIsolation());
////			
//			session.setAttribute("HospitalHDU", hbb.getTotalHDU());
//			session.setAttribute("HospitalVacentHDU", hbb.getVacentHDU());
////			
//			session.setAttribute("HospitalICUV", hbb.getTotalICUV());
//			session.setAttribute("HospitalVacentICUV", hbb.getVacentICUV());
////			
//			session.setAttribute("HospitalICUNV", hbb.getTotalICUNV());
//			session.setAttribute("HospitalVacentICUNV", hbb.getVacentICUNV());
//			
		
		request.getRequestDispatcher("HospitalChangeBedDetail.jsp").forward(request,response);
		}
		
		else
		{
			request.getRequestDispatcher("Login.jsp").forward(request,response);
		}
	}
}
