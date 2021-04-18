package Controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Bean.HospitalBedBean;

/**
 * Servlet implementation class ViewHospitalDetailTableServlet
 */
@WebServlet("/ViewHospitalDetailTableServlet")
public class ViewHospitalDetailTableServlet extends HttpServlet 
{
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		int Pno=Integer.parseInt( (String)request.getParameter("PinSearch")==null?"0":request.getParameter("PinSearch") );
		
		ArrayList<HospitalBedBean> hp=null;
		hp = Dao.HospitalDao.GetHospitalListofPinCode(Pno);
		
		//if empty -> hp = (pno = 0)
		//if not empty n-> hp;
		
		if(Pno==0 || hp==null)
		{
			ArrayList<HospitalBedBean> hp1 = Dao.HospitalDao.GetHospitalList();
			request.setAttribute("List", hp1);
			request.setAttribute("a", "0");
			
			request.getRequestDispatcher("ViewHospitalDetailTable.jsp").forward(request, response);
		}
		else
		{
			request.setAttribute("List", hp);
			request.setAttribute("a", "0");
			request.getRequestDispatcher("ViewHospitalDetailTable.jsp").forward(request, response);
				
		}
	}

}
