package Controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Bean.HospitalBean;
import Dao.HospitalDao;
import Util.JDBCConnection;

/**
 * Servlet implementation class OnSignup
 */
@WebServlet("/HospSignup")
public class HospSignup extends HttpServlet 
{
	     
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		String HospitalName=request.getParameter("HospName").trim();
		String Email=request.getParameter("Email").trim();
		String ContactNo=request.getParameter("ContactNo").trim();
		String Password=request.getParameter("Password").trim();
//		String Address=request.getParameter("Address");
		String City=request.getParameter("City").trim();
		String GST=request.getParameter("GST").trim();
		int Pincode=Integer.parseInt(request.getParameter("Pincode"));
		Bean.HospitalBean h=new HospitalBean();
		
		
//		h.setAddress(Address);
		h.setHospName(HospitalName);
		h.setCity(City);
		h.setContactNo(ContactNo);
		h.setEmail(Email);
		h.setGST(GST);
		h.setHospId(0);
		h.setPassword(Password);
		h.setPincode(Pincode);
			
			if(HospitalDao.addHospitalDetail(h)>0)//TRueConditon
			{
				request.setAttribute("HospSignupmsg","Signup was Sucessfull");
				request.getRequestDispatcher("Login.jsp").forward(request, response);
			}
			else
			{
				request.setAttribute("Signupmsg","Signup was UnSucessfull");
				request.getRequestDispatcher("SignUp.jsp").forward(request, response);
			}
	}

}
