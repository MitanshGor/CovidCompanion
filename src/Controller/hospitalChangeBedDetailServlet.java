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
 * Servlet implementation class hospitalChangeBedDetailServlet
 */
@WebServlet("/hospitalChangeBedDetailServlet")
public class hospitalChangeBedDetailServlet extends HttpServlet {

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
	    int    id           =     Integer.p	t(request.getParameter("id"));
		int  TotalIsolation =    Integer.parseInt(request.getParameter("TotalIsolation"));
		int VacentIsolation =   Integer.parseInt(request.getParameter("VacentIsolation"));
		int   TotalHDU      =  Integer.parseInt(request.getParameter("TotalHDU"));
		int   VacentHDU     = Integer.parseInt(request.getParameter("VacentHDU"));
		int   TotalICUV     =     Integer.parseInt(request.getParameter("TotalICUV"));
		int   VacentICUV    =     Integer.parseInt(request.getParameter("VacentICUV"));
		int   TotalICUNV    =     Integer.parseInt(request.getParameter("TotalICUNV"));
		int   VacentICUNV   =     Integer.parseInt(request.getParameter("VacentICUNV"));
		int   Total         =  	TotalHDU+TotalICUNV+TotalICUV+TotalIsolation;  
		int   TotalVacent   =   VacentHDU+VacentICUNV+VacentICUV+VacentIsolation;
	
		HospitalBedBean h=new HospitalBedBean();
		h.setHospId(id);
		h.setTotalIsolation(TotalIsolation);
		h.setVacentIsolation(VacentIsolation);
		h.setTotalHDU(TotalHDU);
		h.setVacentHDU(VacentHDU);
		h.setTotalICUV(TotalICUV);
		h.setVacentICUV(VacentICUV);
		h.setTotalICUNV(TotalICUNV);
		h.setVacentICUNV(VacentICUNV);
		h.setTotal(Total);
		h.setTotal(TotalVacent);
		
		int i=Dao.HospitalDao.UpdateHospitalBedDetails(h);
//		System.out.println("HHEHEHHEHEHEHHEH");
		if(i>0)
		{
			HospitalBedBean  hbb=HospitalDao.getHospitalBedData(h.getHospId());
			HttpSession session = request.getSession();
			session.setAttribute("SessionHospitalBedBean", hbb);
//			System.out.println("HHEHEHHEHEHEHHEH");
			request.getRequestDispatcher("HospitalChangeBedDetail.jsp").forward(request, response);
		}
		else
		{
			request.setAttribute("msg","Error in Updating");
			request.getRequestDispatcher("HospitalChangeBedDetail.jsp").forward(request, response);
		}
	}
}
