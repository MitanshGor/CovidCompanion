package Dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import Bean.HospitalBean;
import Bean.HospitalBedBean;
import Util.JDBCConnection;

public class HospitalDao {

	public static int UpdateHospitalBedDetails(HospitalBedBean h) 
	{
		// TODO Auto-generated method stub
			try
			(
					Connection conn=JDBCConnection.getConnection();
					PreparedStatement pstmt=conn.prepareStatement("UPDATE HospitalBedDetail SET TotalIsolation=?,VacentIsolation=?,TotalHDU=?,VacentHDU=?,TotalICUV=?,VacentICUV=?,TotalICUNV=?,VacentICUNV=?,Total=?,TotalVacent=? where id=?");
								
			)
			{
//				pstmt.setInt(1, h.getHospId());
				pstmt.setInt(1, h.getTotalIsolation());
				pstmt.setInt(2, h.getVacentIsolation());
				pstmt.setInt(3, h.getTotalHDU());
				pstmt.setInt(4, h.getVacentHDU());
//				pstmt.setString(5, h.getAddress());
				pstmt.setInt(5, h.getTotalICUV());
				pstmt.setInt(6, h.getVacentICUV());
				pstmt.setInt(7, h.getTotalICUNV());
				pstmt.setInt(8, h.getVacentICUNV());
				pstmt.setInt(9, h.getTotal());
				pstmt.setInt(10, h.getTotalVacent());
				pstmt.setInt(11, h.getHospId());
				
				int i=pstmt.executeUpdate();
				return i;
			} 
			catch (Exception e) 
			{
				e.printStackTrace();
			}
			return 0;
	}	
	public static int addHospitalBedDetail(int id) 
	{
		{
			try(
				Connection conn=JDBCConnection.getConnection();
				PreparedStatement pstmt=conn.prepareStatement("INSERT into HospitalBedDetail VALUES (?,0,0,0,0,0,0,0,0,0,0)");
				) 
			{
				pstmt.setInt(1,id);
				int i=pstmt.executeUpdate();
				return i;
			} 
			catch (Exception e) 
			{
				e.printStackTrace();
			}
		}
		return 0;
	}
	public static int addHospitalDetail(HospitalBean b)
		{
			
			try(
					Connection con=JDBCConnection.getConnection();
					PreparedStatement pstmt=con.prepareStatement(" insert into HospitalDetail (Name,Email,password,contactNo,City,Pincode,GST) values (?,?,?,?,?,?,?)");
					
					
					)
			{
				
					pstmt.setString(1,b.getHospName());
					pstmt.setString(2,b.getEmail());
					pstmt.setString(3,b.getPassword());
					pstmt.setString(4,b.getContactNo());
//					pstmt.setString(5,b.getAddress());
					pstmt.setString(5,b.getCity());
					pstmt.setInt(6,b.getPincode());
					pstmt.setString(7,b.getGST());
					
					int i=pstmt.executeUpdate();
					if(i>0)
					{
						int id=HospitalDao.getIdOf(b.getEmail(), b.getPassword(), b.getContactNo());
						if(id>0)
						{
							HospitalDao.addHospitalBedDetail(id);
							return i;
						}
							return 0;
					}
			}
			catch(Exception e)
			{
				e.printStackTrace();
			}
			return 0;
		}
		
		public static int getIdOf(String email,  String password , String ContactNo)
		{
			
			try(
					Connection con=JDBCConnection.getConnection();
					PreparedStatement pstmt=con.prepareStatement(" select * from HospitalDetail where Email=? and password=? and contactNo=?");
					)
			{
				pstmt.setString(1,email);
				pstmt.setString(2,password);
				pstmt.setString(3,ContactNo);
				
				ResultSet rs=pstmt.executeQuery();
					
				int i = 0;
				System.out.println(password+"->2sfdbaegbewgheteggggggggg\n");
				
				while(rs.next())
					{
					
						i =rs.getInt("HospId");
						System.out.println(i+"sfdbaegbewgheteggggggggg\n");
					}
				return i;	
			}
			catch(Exception e)
			{
				e.printStackTrace();
				
			}
			
			return 0;
		}
		public static HospitalBean getHospitalData(int id)
		{
			try(
					Connection con=JDBCConnection.getConnection();
					PreparedStatement pstmt=con.prepareStatement("select * from HospitalDetail where Hospid=?");
					)
			{
				pstmt.setInt(1, id);
				HospitalBean h=new HospitalBean();
				ResultSet rs=pstmt.executeQuery();
				while(rs.next())
				{
					h.setHospId(id);
					h.setHospName(rs.getString("Name"));
					h.setEmail(rs.getString("Email"));
					h.setPassword(rs.getString("password"));
					h.setContactNo(rs.getString("contactNo"));
					h.setCity(rs.getString("City"));
					h.setPincode(rs.getInt("Pincode"));
					h.setGST(rs.getString("GST"));
				}
				return h;
			}
			catch(Exception e)
			{
				e.printStackTrace();	
			}
			return null;
		}
		public static HospitalBedBean getHospitalBedData(int id)
		{
			try(
					Connection con=JDBCConnection.getConnection();
					PreparedStatement pstmt=con.prepareStatement("select * from HospitalBedDetail where id=?");
					)
			{
				pstmt.setInt(1, id);
				HospitalBedBean h=new HospitalBedBean();
				ResultSet rs=pstmt.executeQuery();
				while(rs.next())
				{
						h.setTotalIsolation(rs.getInt("TotalIsolation"));  
						h.setVacentIsolation(rs.getInt("VacentIsolation")); 
						h.setTotalHDU(rs.getInt("TotalHDU"));        
						h.setVacentHDU(rs.getInt("VacentHDU"));       
						h.setTotalICUV(rs.getInt("TotalICUV"));       
						h.setVacentICUV(rs.getInt("VacentICUV"));      
						h.setTotalICUNV(rs.getInt("TotalICUNV"));      
						h.setVacentICUNV(rs.getInt("VacentICUNV"));     
						h.setTotal(rs.getInt("Total"));           
						h.setTotalVacent(rs.getInt("TotalVacent"));     		
				}	
				return h;
			}
			catch(Exception e)
			{
				e.printStackTrace();	
			}
			return null;
		}
		public static ArrayList<HospitalBedBean> GetHospitalList()
		{
			try(
					Connection con=JDBCConnection.getConnection();
					PreparedStatement pstmt=con.prepareStatement(" select * from HospitalDetail as hd join HospitalBedDetail as hdd on hd.HospId=hdd.id;");
					)
			{
				ArrayList<HospitalBedBean> list=new ArrayList<HospitalBedBean>();
				HospitalBedBean hb;
				
				ResultSet rs=pstmt.executeQuery();
				while(rs.next()) 
				{
					hb=new HospitalBedBean();
					hb.setHospId(rs.getInt("HospId"));
					hb.setHospName(rs.getString("Name"));
					hb.setEmail(rs.getString("Email"));
					hb.setPassword(rs.getString("password"));
					hb.setContactNo(rs.getString("ContactNo"));
					hb.setCity(rs.getString("City"));
					hb.setPincode(rs.getInt("Pincode"));
					hb.setGST(rs.getString("GST"));
					hb.setTotalIsolation(rs.getInt("TotalIsolation"));
					hb.setVacentIsolation(rs.getInt("VacentIsolation")); 
					hb.setTotalHDU(rs.getInt("TotalHDU"));        
					hb.setVacentHDU(rs.getInt("VacentHDU"));       
					hb.setTotalICUV(rs.getInt("TotalICUV"));       
					hb.setVacentICUV(rs.getInt("VacentICUV"));      
					hb.setTotalICUNV(rs.getInt("TotalICUNV"));      
					hb.setVacentICUNV(rs.getInt("VacentICUNV"));     
					hb.setTotal(rs.getInt("Total"));           
					hb.setTotalVacent(rs.getInt("TotalVacent"));  
					
					
					list.add(hb);
				}
				if(!list.isEmpty())
					return list;
			}
			catch(Exception e)
			{
				e.printStackTrace();
			}
			return null;
		}
		public static ArrayList<HospitalBedBean> GetHospitalListofPinCode(int pno) 
		{
			try(
					Connection con=JDBCConnection.getConnection();
					PreparedStatement pstmt=con.prepareStatement(" select * from HospitalDetail as hd join HospitalBedDetail as hdd on hd.HospId=hdd.id where hd.Pincode="+pno);
					)
			{
				ArrayList<HospitalBedBean> list=new ArrayList<HospitalBedBean>();
				HospitalBedBean hb;
				
				ResultSet rs=pstmt.executeQuery();
				while(rs.next()) 
				{
					hb=new HospitalBedBean();
					hb.setHospId(rs.getInt("HospId"));
					hb.setHospName(rs.getString("Name"));
					hb.setEmail(rs.getString("Email"));
					hb.setPassword(rs.getString("password"));
					hb.setContactNo(rs.getString("ContactNo"));
					hb.setCity(rs.getString("City"));
					hb.setPincode(rs.getInt("Pincode"));
					hb.setGST(rs.getString("GST"));
					hb.setTotalIsolation(rs.getInt("TotalIsolation"));
					hb.setVacentIsolation(rs.getInt("VacentIsolation")); 
					hb.setTotalHDU(rs.getInt("TotalHDU"));        
					hb.setVacentHDU(rs.getInt("VacentHDU"));       
					hb.setTotalICUV(rs.getInt("TotalICUV"));       
					hb.setVacentICUV(rs.getInt("VacentICUV"));      
					hb.setTotalICUNV(rs.getInt("TotalICUNV"));      
					hb.setVacentICUNV(rs.getInt("VacentICUNV"));     
					hb.setTotal(rs.getInt("Total"));           
					hb.setTotalVacent(rs.getInt("TotalVacent"));  
					
					
					list.add(hb);
				}
				if(!list.isEmpty())
					return list;
			}
			catch(Exception e)
			{
				e.printStackTrace();
			}
			return null;
		}
		
}