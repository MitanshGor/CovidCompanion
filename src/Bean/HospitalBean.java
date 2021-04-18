package Bean;

public class HospitalBean {
	private int HospId;
	private String HospName;
	public String getHospName() {
		return HospName;
	}
	public void setHospName(String hospName) {
		HospName = hospName;
	}
	private String email;
	private String password;
	private String contactNo;
//	private String address;
	private String city;
	private int pincode;
	private String GST;
	public int getHospId() {
		return HospId;
	}
	public void setHospId(int hospId) {
		HospId = hospId;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getContactNo() {
		return contactNo;
	}
	public void setContactNo(String contactNo) {
		this.contactNo = contactNo;
	}
//	public String getAddress() {
//		return address;
//	}
//	public void setAddress(String address) {
//		this.address = address;
//	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public int getPincode() {
		return pincode;
	}
	public void setPincode(int pincode) {
		this.pincode = pincode;
	}
	public String getGST() {
		return GST;
	}
	public void setGST(String gST) {
		GST = gST;
	}
	public HospitalBean()
	{
		
	}

}