<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>

<html lang="en"><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>EDIT VENDOR DETAILS </title>
    <link rel="stylesheet" href="./test_files/bootstrap.css">
    <link rel="stylesheet" href="EEDIT PAGE.css">
  
<style></style></head>
<%@ page import = "java.sql.*" %>

<%


String vatno=null;
	String panno=null;
	String cenvat=null;
	String cgct=null;
	String micr=null;
	String gstino=null;
	String servicetaxregn=null;
	String cst_no=null;
	String cstregno=null;
	String lstregdno=null;
	String regdate=null;
	String expdate=null;
	String salestax=null;
	String sec=null;
	


	String druglindate=null;
	String druglineno=null;
	String ecccodeano=null;
	String ecccodeno=null;
	String excisecomm=null;
	String exciseclassifi=null;
	String excisedivision=null;
	String excisevendorindcode=null;
	String range=null;
	String exciseregno=null;
	String regn=null;
	String st=null;
	String typeofvendor=null;
	String vend=null;


	String telephone1=null;
	String telephone2=null;
	String telephoneextns=null;
	String vemail=null;
	String website=null;
	String contactperson=null;
	String mobileno1=null;
	String faxno1=null;
	String faxno2=null;
	String faxnoextns=null;
	

	String nameinitials=null;
	String name1=null;
	String name2=null;
	String plant=null;
	String address1=null;
	String address2=null;
	String country=null;
	String state=null;
	String city=null;
	String zipcode=null;
	String searchterm=null;
	String pobox=null;
	String dealing=null;
	


	
	String version=null;
	String status=null;
	int vendorcodemain=0;
	String updatedon=null;
	String createdon=null;
	String updatedby=null;
	String createdby=null;
	
	






    String bcode=null;
	String bname=null;
	String bcity=null;
	String ifsccode=null;
	String brcode=null;
	String bankaddress=null;
	String accountno=null;
	String bcode2=null;
	String  bname2=null;
	String  bcity2=null;
	String ifsccode2=null;
	String brcode2=null;
	String  bankaddress2=null;
	String  accountno2=null;    
   
   
ResultSet name=null;
ResultSet main=null;
ResultSet tax=null;
ResultSet bank=null;
ResultSet excise=null;
ResultSet contact=null;        
   
PreparedStatement pcontact=null;
PreparedStatement pbank=null;
PreparedStatement ptax=null;
PreparedStatement pmain=null;
PreparedStatement pexcise=null;
PreparedStatement pname=null;        
   
String Code = request.getParameter("vcode");
//String  sqlview = null; 

String mainholder="select vendorcodemain,status,createdon,updatedon,createdby,updatedby,version from vendorcodeholder where vendorcodemain = ? ";
String nameholder="select nameinitials,name1,name2,plant,address1,address2,country,city,state,zipcode,searchterm,pobox,dealing from vname where vnamecode= ? ";

String contactholder="select telephone1,telephone2,telephoneextns,vemail,website,mobileno1,contactperson,faxno1,faxno2,faxnoextns from vcontact where vcontactcode= ? ";
String exciseholder="select  druglindate,druglineno,ecccodeano,ecccodeno,excisecomm,exciseclassifi,excisedivision,excisevendorindcode,range,exciseregno,regn,st,typeofvendor,vend from vexcise where vexcisecode = ? ";
String taxholder="select vatno,panno,cenvat,cgct,micr,gstino,servicetaxregn,cst_no,cstregno,lstregdno,regdate,expdate,salestax,sec from vtax where vtaxcode= ? ";
String bankholder="select bcode,bname,bcity,ifsccode,brcode,bankaddress,accountno,bcode2,bname2,bcity2,ifsccode2,brcode2,bankaddress2,accountno2 from vbank where vbankcode= ? ";

int vendorcode=Integer.parseInt(Code);
if(Code!=null)
{

try{
	Class.forName("oracle.jdbc.driver.OracleDriver");
	Connection conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "SYSTEM", "root");
	///////////////////////main

pmain=conn.prepareStatement(mainholder);
   pmain.setInt(1,vendorcode);
	main=pmain.executeQuery();
	while(main.next())
	{
	
	 version=main.getString("version");
	 status=main.getString("status");
	 vendorcodemain=main.getInt("vendorcodemain");
	 updatedon=main.getString("updatedon");
	 createdon=main.getString("createdon");
	 updatedby=main.getString("updatedby");
	 createdby=main.getString("createdby");

	}

   ///////////////////////////name

	pname=conn.prepareStatement(nameholder);
   pname.setInt(1,vendorcode);
	name=pname.executeQuery();
	while(name.next())
	{
	
	 nameinitials=name.getString("nameinitials");
	 name1=name.getString("name1");
	 name2=name.getString("name2");
	 plant=name.getString("plant");
	 address1=name.getString("address1");
	 address2=name.getString("address2");
	 country=name.getString("country");
	 state=name.getString("state");
	 city=name.getString("city");
	 zipcode=name.getString("zipcode");
	 searchterm=name.getString("searchterm");
	 pobox=name.getString("pobox");
    dealing=name.getString("dealing");
	}		
	
	
	////////////////contact
	
	pcontact=conn.prepareStatement(contactholder);
   pcontact.setInt(1,vendorcode);
	contact=pcontact.executeQuery();
   while(contact.next())
	{
	
	 telephone1=contact.getString("telephone1");
	 telephone2=contact.getString("telephone2");
	 telephoneextns=contact.getString("telephoneextns");
	 vemail=contact.getString("vemail");
	 website=contact.getString("website");
mobileno1=contact.getString("mobileno1");
contactperson=contact.getString("contactperson");
	 faxno1=contact.getString("faxno1");
	 faxno2=contact.getString("faxno2");
	 faxnoextns=contact.getString("faxnoextns");
	}		
  
   //////////excise
	
     pexcise=conn.prepareStatement(exciseholder);
   pexcise.setInt(1,vendorcode);
  excise=pexcise.executeQuery();
  while(excise.next())
		{
		
		 druglindate=excise.getString("druglindate");
		 druglineno=excise.getString("druglineno");
		 ecccodeano=excise.getString("ecccodeano");
		 ecccodeno=excise.getString("ecccodeno");
		 excisecomm=excise.getString("excisecomm");
		 exciseclassifi=excise.getString("exciseclassifi");
		 excisedivision=excise.getString("excisedivision");
		 excisevendorindcode=excise.getString("excisevendorindcode");
		 range=excise.getString("range");
		 exciseregno=excise.getString("exciseregno");
		 regn=excise.getString("regn");
		 st=excise.getString("st");
		 typeofvendor=excise.getString("typeofvendor");
		 vend=excise.getString("vend");
		}		
       
   
   ////////TAX
   
   ptax=conn.prepareStatement(taxholder);
   ptax.setInt(1,vendorcode);
	tax=ptax.executeQuery();
	while(tax.next())
	{
	
	 vatno=tax.getString("vatno");
	 panno=tax.getString("panno");
	 cenvat=tax.getString("cenvat");
	 cgct=tax.getString("cgct");
	 micr=tax.getString("micr");
	 gstino=tax.getString("gstino");
	 servicetaxregn=tax.getString("servicetaxregn");
	 cst_no=tax.getString("cst_no");
	 cstregno=tax.getString("cstregno");
	 lstregdno=tax.getString("lstregdno");
	 regdate=tax.getString("regdate");
	 expdate=tax.getString("expdate");
	 salestax=tax.getString("salestax");
	 sec=tax.getString("sec");
	}		

	//////bank
	
   pbank=conn.prepareStatement(bankholder);
   pbank.setInt(1,vendorcode);
	bank=pbank.executeQuery();
	while(bank.next())
	{
	
	 bcode=bank.getString("bcode");
	 bname=bank.getString("bname");
	 bcity=bank.getString("bcity");
	 ifsccode=bank.getString("ifsccode");
	brcode=bank.getString("brcode");
	 bankaddress=bank.getString("bankaddress");
	 accountno=bank.getString("accountno");
	 bcode2=bank.getString("bcode2");
	  bname2=bank.getString("bname2");
	  bcity2=bank.getString("bcity2");
	 ifsccode2=bank.getString("ifsccode2");
	 brcode2=bank.getString("brcode2");
	  bankaddress2=bank.getString("bankaddress2");
	  accountno2=bank.getString("accountno2");
	}	        
   
 
   
   
	
%>


<body>
    <img src="./test_files/sail logo.png" alt="sail logo">
    <form action="backupdate.jsp" method="POST" value="form">
        <fieldset>
            <legend>VENDOR DETAILS FOR <%= vendorcode%></legend>
            <div class="row">
                
                <h1 class="col-xs-12 col-sm-6" style="margin-left: 25%; font-size: 48px;">EDIT VENDOR DETAILS</h1>

                
            </div>
            <div class="row">
                <span class="col-xs-12 col-sm-6">
                    <div>
                        <label for="Vendor Name">Vendor Name</label>
                        <select name="NameInitials" id="Vendor Name" value=" <%=  nameinitials %>" >
                            <option value="Mr.">MR.</option>
                            <option value="Mrs.">MRS.</option>
                            <option value="Miss.">MISS.</option>
                            <option value="Ms.">MS.</option>
                            <option value="Dr.">DR.</option>
                            <option value="Dr." selected>M/S.</option>
                        </select>
                        <input type="text" name="VendorName" id="Vendor Name" required="" style="
    margin-left: 14px;" value="<%=  name1 %>"
>
                    </div>
                    <div>
                        <label for="Dealing">Dealing With</label>
                        &nbsp;&nbsp;
                        <label for="Dealing" style="margin-left: 8px;">Materials</label>
                        <input type="radio" name="DealingWith" id="Dealing" value="<%if(dealing=="materials")
                        	out.print("checked");%>">
                        <label for="Dealing">Services</label>
                        <input type="radio" name="DealingWith" id="Dealing" value="<%   if(dealing=="services")
                            	out.print("checked");%>">
                        <label for="Dealing">Both</label>
                        <input type="radio" name="DealingWith" id="Dealing" value="<%if(dealing=="both")
                        	out.print("checked");%>">
                    </div>
                    <div>
                        <label for="Name2">Vendor Name 2</label>
                        <input type="text" id="Name2" name="Name2" value="<%=  nameinitials %> " style="
    margin-left: 77px;
">
                    </div>
                    
                    <div>
                        <label for="Country">Country</label>
                        <select name="Country" id="Country" style="
    margin-left: 132px;
">
                            <option selected value="India">India</option>
                            <!--  <option value="Argentina">Argentina</option>
                            <option value="South Korea">South Korea</option>
                            <option value="China">China</option>
                            <option value="Japan">Japan</option>
                            <option value="Nepal">Nepal</option>
                            <option value="Afganistan">Afganistan</option>
                            <option value="Russia">Russia</option>
                        </select> -->
                    </div>
                    <div>
                        <label for="State">State</label>
                        <input type="text" name="State" id="State" value="<%=  state %> " style="
    margin-left: 151px;
">
                    </div>
                    <div>
                        <label for="city">City</label>
                        <input type="text" name="City" id="city" value=" <%=  city %>" style="
    margin-left: 159px;
">
                    </div>
                    <span>
                        <label for="zipcode">Zip/PiN</label>
                        <input type="text" name="Zipcode" id="zipcode" title="Six letter Country code" placeholder="XX-XXXX" value="<%=  zipcode %> " style="
    margin-left: 136px;
">
                        
                    </span>
                </span>
                <span class="col-xs-12 col-sm-6">
                    <div>
                        <label for="Address1">Address 1</label>
              <input type="textarea" class="form-control form-group" name="Address1" id="Address1" cols="40" rows="20" style="width: 80%;" value=" <%=address1 %>"></textarea>
                    </div>
                    <div>
                        <label for="Address2">Address 2</label>
                        <input type="textarea" class="form-control form-group" name="Address2" id="Address2" cols="40" rows="20" style="width: 80%;" value=" <%=address2 %>"></textarea>
                    </div>
                    <div>
                        <label for="searchterm">Search Term</label>
                        <input type="text" id="searchterm" name="SearchTerm" value="<%= searchterm %> ">
                    </div>
                    <span>
                        <label for="postbox">P.Box No</label>
                        <input type="text" name="Postbox" id="postbox" value=" <%=pobox %>" style="
    margin-left: 28px;
">
                    </span>
                </span>
            </div>
        </fieldset>
        <fieldset>
            <legend>CONTACT DETAILS</legend>
            <div class="row">
                <span class="col-xs-12 col-sm-6">
                    <div>
                        <label for="Telephone1">Telephone No. 1</label>
                        <input type="text" name="V_TELE1" id="Telephone1" value=" <%= telephone1 %>">
                    </div>
                    <div>
                        <label for="Telephone2">Telephone No. 2</label>
                        <input type="text" id="Telephone2" name="V_TELE2" value=" <%=  telephone2 %> ">
                    </div>
                    <div>
                        <label for="TelephoneExtns">Telephone Extns</label>
                        <input type="text" name="V_TELEEXTNS" id="TelephoneExtns" value=" <%=  telephoneextns %>" style="
    margin-left: -4px;
">
                    </div>
                    <div>
                        <label for="email">Email</label>
                        <input type="email" name="V_EMAIL" id="email" value="<%=  vemail %> " style="
    margin-left: 81px;
    border: 283px;
">
                    </div>
                    <span>
                        <label for="website">Website</label>
                        <input type="text" name="V_WEBSITE" id="website" value=" <%=  website %>" style="
    margin-left: 60px;
">
                    </span>
                </span>
                <span class="col-xs-12 col-sm-6">
                    <div>
                        <label for="contactperson">Contact Person</label>
                        <input type="text" id="contactperson" name="V_CONTACTPERSON" value="<%=  contactperson %> ">
                    </div>
                    <div>
                        <label for="mobno">Mobile No. </label>
                        <input type="text" name="V_MOBNO" id="mobno" value=" <%=  mobileno1 %>" style="
    margin-left: 36px;
">
                    </div>
                    <div>
                        <label for="faxno1">Fax No. 1</label>
                        <input type="text" name="V_FAXNO1" id="faxno1" value=" <%=  faxno1 %>" style="
    margin-left: 52px;
">
                    </div>
                    <div>
                        <label for="faxno2">Fax No. 2</label>
                        <input type="text" name="V_FAXNO2" id="faxno2" value=" <%=  faxno1 %>" style="
    margin-left: 53px;
">
                    </div>
                    <span>
                        <label for="faxextns">Fax Extns</label>
                        <input type="text" name="V_FAXEXTNS" id="faxextns" value="<%=  faxnoextns %> " style="
    margin-left: 48px;
">
                    </span>
                </span>
            </div>
        </fieldset>
        <fieldset>
            <legend>EXCISE DETAILS</legend>
            <div class="row">
                <span class="col-xs-12 col-sm-6">
                    <div>
                        <label for="druglicensedate">Drug License Date </label>
                        <input type="date" name="V_DRUGLICDATE" id="druglicensedate" value=" <%=  druglindate %>" style="
    border: 161px;
    margin-left: 61px;
">
                    </div>
                    <div>
                        <label for="druglicno">Drug License No. </label>
                        <input type="text" id="druglicno" name="V_DRUGLICNO" value=" <%=  druglineno %>" style="
    margin-left: 71px;
">
                    </div>
                    <div>
                        <label for="ecccodea">ECC Code(Alpha Numeric) </label>
                        <input type="text" name="V_ECCCODEA" id="ecccodea" value=" <%=  ecccodeano %>">
                    </div>
                    <div>
                        <label for="ecccoden">ECC Code(Numeric) </label>
                        <input type="text" name="V_ECCCODEN" id="ecccoden" value="<%=  ecccodeno %> " style="
    margin-left: 49px;
">
                    </div>
                    <div>
                        <label for="excisecomm">Excise Commisionarate </label>
                        <input type="text" name="V_EXCISECOMM" id="excisecomm" value=" <%=  excisecomm %>" style="
    margin-left: 20px;
">
                    </div>
                    <div>
                        <label for="exciseclass">Excise Classification </label>
                        <input type="text" name="V_EXCISECLASS" id="exciseclass" value=" <%=  exciseclassifi %>" style="
    margin-left: 41px;
">
                    </div>
                    <span>
                        <label for="excisediv">Excise Division </label>
                        <input type="text" name="V_EXCISEDIV" id="excisediv" value="<%=  excisedivision %> " style="
    margin-left: 81px;
">
                    </span>
                </span>
                <span class="col-xs-12 col-sm-6">
                    <div>
                        <label for="exciseindvendor">Excise Ind Vendor </label>
                        <input type="text" id="exciseindvendor" name="V_EXCISEINDVENDOR" value=" <%=  excisevendorindcode %>">
                    </div>
                    <div>
                        <label for="exciserange">Excise Range </label>
                        <input type="text" name="V_EXCISERANGE" id="exciserange" value=" <%=  range %>" style="
    margin-left: 36px;
">
                    </div>
                    <div>
                        <label for="exciseregno">Excise Reg. No. </label>
                        <input type="text" name="V_EXCISEREGNO" id="exciseregno" value=" <%=  exciseregno %>" style="
    margin-left: 19px;
">
                    </div>
                    <div>
                        <label for="regn">REGN </label>
                        <input type="text" name="V_REGN" id="regn" value=" <%=  regn %>" style="
    margin-left: 93px;
">
                    </div>
                    <div>
                        <label for="st">ST </label>
                        <input type="text" name="V_ST" id="st" value=" <%=  st %>" style="
    margin-left: 119px;
">
                    </div>
                    <div>
                        <label for="vendortype">Type of Vendor</label>
                        <input type="text" name="V_TYPE" id="vendortype" value="<%=  typeofvendor %> " style="
    margin-left: 29px;
">
                    </div>
                    <span>
                        <label for="vend">VEND</label>
                        <input type="text" name="V_VEND" id="vend" value=" <%=  vend %>" style="
    margin-left: 98px;
">
                    </span>
                </span>
            </div>
        </fieldset>
        <fieldset>
            <legend>TAX DETAILS</legend>
            <div class="row">
                <span class="col-xs-12 col-sm-6">
                    <div>
                        <label for="vatregno">VAT Reg. No. </label>
                        <input type="text" name="V_VATREGNO" id="vatregno" value=" <%=  vatno %>" style="
    margin-left: 41px;
">
                    </div>
                    <div>
                        <label for="pan">Pan No. </label>
                        <input type="text" id="pan" name="V_PAN" value="<%=  panno %>" pattern="^[A-Z]{5}[0-9]{4}[A-Z]{1}" placeholder="XXXXXXXXXX" style="
    margin-left: 80px;
" >
                    </div>
                    <div>
                        <label for="cenvat">CENVAT </label>
                        <input type="text" name="V_CENVAT" id="cenvat" value="<%=  cenvat %> " style="
    margin-left: 75px;
">
                    </div>
                    <div>
                        <label for="cgct">CGCT Reg. No. </label>
                        <input type="text" name="V_CGCT" id="cgct" value=" <%=  cgct %>" style="
    margin-left: 23px;
">
                    </div>
                    <div>
                        <label for="micr">MICR</label>
                        <input type="text" name="V_MICR" id="micr" value="<%=  micr %> " style="
    margin-left: 102px;
">
                    </div>
                    <div>
                        <label for="gstin">GSTIN No. </label>
                        <input type="text" name="V_GSTIN" id="gstin" value="<%=  gstino %>" pattern="[0-9]{2}-[A-Z]{5}[0-9]{4}[A-Z]{1}-[0-9]{1}[A-Z]{1}[A-Z0-9]{1}" placeholder="XX-XXXXXXXXXX-XXX" style="
    margin-left: 59px;
">
                    </div>
                    <span>
                        <label for="servicetax">Service Tax Regn. </label>
                        <input type="text" name="V_SERVICETAX" id="servicetax" value="<%=  servicetaxregn %> ">
                    </span>
                </span>
                <span class="col-xs-12 col-sm-6">
                    <div>
                        <label for="cst">CST No. </label>
                        <input type="text" id="cst" name="V_CST" value=" <%=  cst_no %>" style="
    margin-left: 53px;
">
                    </div>
                    <div>
                        <label for="cstregno">CST Reg No. </label>
                        <input type="text" name="V_CSTREGNO" id="cstregno" value=" <%=  cstregno %>" style="
    margin-left: 19px;
">
                    </div>
                    <div>
                        <label for="lstregno">LST Reg No. </label>
                        <input type="text" name="V_LSTREGNO" id="lstregno" value=" <%=  lstregdno %>" style="
    margin-left: 21px;
">
                    </div>
                    <div>
                        <label for="regdate">Reg Date </label>
                        <input type="date" name="V_REGDATE" id="regdate" value="<%=  regdate %> " style="
    margin-left: 48px;
    border: 134px;
">
                    </div>
                    <div>
                        <label for="regexpdate">Reg Exp Date </label>
                        <input type="date" name="V_REGEXPDATE" id="regexpdate" value=" <%=  expdate %>" style="
    margin-left: 14px;
    border: 116px;
">
                    </div>
                    <div>
                        <label for="salestaxregn">Sales Tax Regn </label>
                        <input type="text" name="V_SALESTAX" id="salestaxregn" value="<%=  salestax %> ">
                    </div>
                    <span>
                        <label for="sec">SEC </label>
                        <input type="text" name="V_SEC" id="sec" value=" <%=  sec %>" style="
    margin-left: 85px;
">
                    </span>
                </span>
            </div>
        </fieldset>
        <fieldset>
            <legend>BANK DETAILS</legend>
            <div class="row">
                <span class="col-xs-12 col-sm-6">
                    <div>
                        <label for="b_code">Bank Code </label>
                        <input type="text" name="V_BANKCODE" id="b_code" value=" <%=  bcode %>" style="
    margin-left: 37px;
">
                    </div>
                    <div>
                        <label for="b_name">Bank Name </label>
                        <input type="text" id="b_name" name="V_BANKNAME" value=" <%=  bname %>" style="
    margin-left: 35px;
">
                    </div>
                    <div>
                        <label for="b_city">Bank City </label>
                        <input type="text" name="V_BANKCITY" id="b_city" value=" <%=  bcity %>" style="
    margin-left: 48px;
">
                    </div>
                    <span>
                        <label for="ifsc">IFSC Code </label>
                        <input class="GFG" type="text" name="V_IFSC" id="ifsc" pattern="[A-Z]{4}0[A-Z0-9]{6}" placeholder="XXXX0XXXXXX" value="<%=ifsccode %>"
                         style="margin-left: 41px;
">

                    </span>
                </span>
                <span class="col-xs-12 col-sm-6">
                    <div>
                        <label for="branchcode">Branch Code </label>
                        <input type="text" id="branchcode" name="V_BRANCHCODE" value=" <%=  brcode %>">
                    </div>
                    <div>
                        <label for="branchaddr">Branch Address </label>
                        <textarea class="form-control" type="text" name="V_BRANCHADDR" value="<%=  bankaddress %>"id="branchaddr" cols="40" rows="4" style="width: 80%;"></textarea>
                    </div>
                    <span>
                        <label for="accno">Account No. </label>
                        <input type="text" name="V_ACCNO" id="accno" value="<%=  accountno %> " style="
    /* margin-left: 9px; */
">
                    </span>
                </span>
            </div>
            <hr style="border: 1px solid black; width: 80%; align-self: center;">
            <div class="col-lg-12">2nd Bank Details If Any </div>
            <div class="row">
                <span class="col-xs-12 col-sm-6">
                    <div>
                        <label for="b_code">Bank Code </label>
                        <input type="text" name="V_BANKCODE2" id="b_code" value="<%=  bcode2 %> " style="
    margin-left: 32px;
">
                    </div>
                    <div>
                        <label for="b_name">Bank Name </label>
                        <input type="text" id="b_name" name="V_BANKNAME2" value=" <%=  bname2 %>" style="
    margin-left: 29px;
">
                    </div>
                    <div>
                        <label for="b_city">Bank City </label>
                        <input type="text" name="V_BANKCITY2" id="b_city" value="<%=  bcity2 %> " style="
    margin-left: 43px;
">
                    </div>
                    <span>
                        <label for="ifsc">IFSC Code </label>
                        <input type="text" name="V_IFSC2" id="ifsc" value="<%=  ifsccode2 %>" pattern="[A-Z]{4}0[A-Z0-9]{6}" placeholder="XXXX0XXXXXX"  style="
    margin-left: 34px;
">
                    </span>
                </span>
                <span class="col-xs-12 col-sm-6">
                    <div>
                        <label for="branchcode">Branch Code </label>
                        <input type="text" id="branchcode" name="V_BRANCHCODE2" value="<%=  brcode2 %> ">
                    </div>
                    <div>
                        <label for="branchaddr">Branch Address </label>
                        <textarea class="form-control" type="text" name="V_BRANCHADDR2" value="<%=bankaddress2 %>"id="branchaddr" cols="40" rows="4" style="width: 80%;"></textarea>
                    </div>
                    <span>
                        <label for="accno">Account No. </label>
                        <input type="text" name="V_ACCNO2" id="accno" value="<%= accountno2 %> " style="
    margin-left: 16px;
">
                    </span>
                </span>
            </div>
        </fieldset>
        <!-- <form name="windowevent">
            enter string : <input type="text" name="txtOriginal" />
            <br>
            <input type="submit" value="check" name="btnIndianzipcode">
        </form> -->
        <input type="hidden" name="vendorcode" value="<%= vendorcode%>" >
        <input type="submit" class="btn-default" name="sumbitdetails" value="SUBMIT" style="
        margin-left: 43%;
    width: 13%;
    background-color: rgb(140, 53, 161);
    font-size: larger;
    font-weight: bolder;
    padding: 14px 20px;
    text-decoration-style: solid;
">


  <%  
		
	
	}catch(Exception e)
	{
		out.println(e);
	}
	
}	

%>
        
        <!-- <input type="reset" name="resetdetails&quot;" value="RESET" class="btn-default" style="
    width: 13%;
    background-color: rgb(29,129,134);
    font-size: larger;
    font-weight: bolder;
    padding: 14px 20px;
    text-decoration-style: solid;
    margin-left: 73%;
    margin-top: 0px;
    ">.
         -->
    </form>


</body></html>