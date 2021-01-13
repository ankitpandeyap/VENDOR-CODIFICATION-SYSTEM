
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!-- saved from url=(0014)about:internet -->
<html lang="en">

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>VENDOR INPUT FORM</title>
    <link rel="stylesheet" href="./css/bootstrap.css">
    <link rel="stylesheet" href="veiw page css.css">

    <style></style>
</head>

<%@ page import = "java.sql.*" %>

<body >
    <img src="sail logo.png" alt="sail logo">
   <form action="update.jsp" method="POST" value="form"> 
        <fieldset>
     <%


     /*
     String tablenames="vendorcodeholder,vname,vcontact,vexcise,vtax,vbank ";
     String  joincondition="vendorcodeholder.vendorcodemain=vbank.vbankcode and vendorcodeholder.vendorcodemain=vcontact.vcontactcode"+
     "and vendorcodeholder.vendorcodemain=vexcise.vexcisecode and vendorcodeholder.vendorcodemain=vname.vnamecode and vendorcodeholder.vendorcodemain=vtax.vtaxcode";
     String  usercondition=" and  vendorcodemain='?';";
     sqlview="SELECT " + codeholder+nameholder+contactholder+exciseholder+taxholder+bankholder+" from "+tablenames+" where "+joincondition+usercondition;
     */
     
     
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
        
       /* 
        
        
        
        
       */ 
        
        
		
%>
            <legend>VENDOR DETAILS</legend>
            <span>
                <label for="version">Version</label>
                <span><%=version%></span>
            </span>
            <div class="row">
                <h1 class="col-xs-12 col-sm-6" style="margin-left: 25%;" text="bold">VIEW DETAILS</h1>
            </div>
            <div class="row">
                <span class="col-sm-12 col-md-6">
                    <div id="plant">
                        <label for="plant">Plant</label>
                        <Span><%= plant %></Span>
                    </div>
                    <div id="createdby">
                        <label for="createdby">Created By</label>
                        <Span><%= createdby %></Span> 
                    </div>
                    <div id="updatedby">
                        <label for="updatedby">Updated By</label>
                         <Span><%= updatedby %></Span>
                    </div>
                    
                    <div id="Vendor code">
                        <label for="Vendor code">Vendor code</label>
                <span><%=vendorcodemain %></span>        
                    </div>
                    <div>
                        <label for="Vendor ">Vendor name </label>
                    <span><%= name1 %></span>
                        <span></span>
                    </div>
                    <div>
                        <label for="Dealing">Dealing With</label>
                        &nbsp;&nbsp;
                        <span><%= dealing %></span>
                    </div>
                    <div>
                        <label for="2">Vendor name 2</label>
                        <span><%= name2 %></span>
                    </div>

                    <div>
                        <label for="Country">Country</label>
                          <span><%= country %></span>
                    </div>
                    <div>
                        <label for="State">State</label>
                         <span><%= state %></span>
                    </div>
                    <div>
                        <label for="city">City</label>
                         <span><%=city %></span>
                    </div>
                    <div>
                        <label for="zipcode">Zip/PiN</label>
                         <span><%= zipcode %></span>

                    </div>
                </span>
                <span class="col-xs-12 col-sm-6">
                    <div id="status">
                        <label for="status">Status </label>
                         <span><%= status %></span>
                        
                    </div>
                    <div id="createdon">
                        <label for="createdon">Created On</label>
                         <span><%= createdon %></span>
                    </div>
                    <div id="updatedon">
                        <label for="updatedon">Updated On</label>
                         <span><%= updatedon %></span>
                    </div>
                    
                    <div>
                        <label for="Address1">Address 1</label>
                        <span>
                            <div>
                          <span><%= address1 %></span>
                            </div>
                        </span>

                    </div>
                    <div>
                        <label for="Address2">Address 2</label>
                        <span>
                            <div>
                             <span><%= address2 %></span>
                            </div>
                        </span>
                    </div>
                    <div>
                        <label for="searchterm">Search Term</label>
                        <span>
                            <div>
                             <span><%= searchterm %></span>
                            </div>
                        </span>
                    </div>
                    <span>
                        <label for="postbox">P.Box No</label>
                        <span>
                            <div>
                               <span><%= pobox %></span>
                            </div>
                        </span>
                    </span>
                </span>
            </div>
        </fieldset>
        <fieldset>
            <legend> CONTACT DETAILS</legend>
            <div class="row">
                <span class="col-xs-12 col-sm-6">
                    <div>
                        <label for="Telephone1">Telephone No. 1</label>
                        <span><%= telephone1 %></span>
                    </div>
                    <div>
                        <label for="Telephone2">Telephone No. 2</label>
                        <span><%= telephone2 %></span>
                    </div>
                    <div>
                        <label for="TelephoneExtns">Telephone Extns</label>
                        <span><%= telephoneextns %></span>
                    </div>
                    <div>
                        <label for="email">Email</label>
                        <span><%= vemail %></span>
                    </div>
                    <span>
                        <label for="website">Website</label>
                        <span><%= website %></span>
                    </span>
                </span>
                <span class="col-xs-12 col-sm-6">
                    <div>
                        <label for="person"> contactPerson</label>
                       <span><%= contactperson %></span>
                    </div>
                    <div>
                        <label for="mobno">Mobile No. </label>
                        <span><%= mobileno1 %></span>
                    </div>
                    <div>
                        <label for="faxno1">Fax No. 1</label>
                        <span><%= faxno1 %></span>
                    </div>
                    <div>
                        <label for="faxno2">Fax No. 2</label>
                        <span><%= faxno2 %></span>
                    </div>
                    <span>
                        <label for="faxextns">Fax Extns</label>
                        <span><%= faxnoextns %></span>
                    </span>
                </span>
            </div>
        </fieldset>
        <fieldset>
            <legend> EXCISE DETAILS</legend>
            <div class="row">
                <span class="col-xs-12 col-sm-6">
                    <div>
                        <label for="druglicensedate">Drug License Date </label>
                        <span><%= druglindate %></span>
                    </div>
                    <div>
                        <label for="druglicno">Drug License No. </label>
                        <span><%= druglineno %></span>
                    </div>
                    <div>
                        <label for="ecccodea">ECC Code ALPHA </label>
                        <span><%= ecccodeano %></span>
                    </div>
                    <div>
                        <label for="ecccoden">ECC Code </label>
                       <span><%= ecccodeno %></span>
                    </div>
                    <div>
                        <label for="comm"> Excise Commisionarate </label>
                        <span><%= excisecomm %></span>
                    </div>
                    <div>
                        <label for="class"> Excise Classification </label>
                        <span><%= exciseclassifi %></span>
                    </div>
                    <span>
                        <label for="div"> Excise Division </label>
                       <span><%= excisedivision %></span>
                    </span>
                </span>
                <span class="col-xs-12 col-sm-6">
                    <div>
                        <label for="indvendor"> Excise Ind Vendor </label>
                        <span><%= excisevendorindcode %></span>
                    </div>
                    <div>
                        <label for="range"> Range </label>
                        <span><%= range %></span>
                    </div>
                    <div>
                        <label for="regno"> Reg. No. </label>
                        <span><%= exciseregno %></span>
                    </div>
                    <div>
                        <label for="regn">REGN </label>
                         <span><%= regn %></span>
                    </div>
                    <div>
                        <label for="st">ST </label>
                        <span><%= st %></span>
                    </div>
                    <div>
                        <label for="vendortype">Type of Vendor</label>
                        <span><%= typeofvendor %></span>
                    </div>
                    <span>
                        <label for="vend">VEND</label>
                         <span><%= vend %></span>
                    </span>
                </span>
            </div>
        </fieldset>
        <fieldset>
            <legend> TAX DETAILS</legend>
            <div class="row">
                <span class="col-xs-12 col-sm-6">
                    <div>
                        <label for="vatregno">VAT Reg. No. </label>
                         <span><%= vatno %></span>
                    </div>
                    <div>
                        <label for="pan">Pan No. </label>
                         <span><%= panno %></span>
                    </div>
                    <div>
                        <label for="cenvat">CENVAT </label>
                         <span><%= cenvat %></span>
                    </div>
                    <div>
                        <label for="cgct">CGCT Reg. No. </label>
                        <span><%= cgct %></span>
                    </div>
                    <div>
                        <label for="micr">MICR</label>
                         <span><%= micr %></span>
                    </div>
                    <div>
                        <label for="gstin">GSTIN No. </label>
                         <span><%= gstino %></span>
                    </div>
                    <span>
                        <label for="servicetax">Service TAX.  Regn. </label>
                        <span><%= servicetaxregn %></span>
                    </span>
                </span>
                <span class="col-xs-12 col-sm-6">
                    <div>
                        <label for="cst">CST No. </label>
                        <span><%= cst_no %></span>
                    </div>
                    <div>
                        <label for="cstregno">CST Reg No. </label>
                        <span><%= cstregno %></span>
                    </div>
                    <div>
                        <label for="lstregno">LST Reg No. </label>
                       <span><%= lstregdno %></span>
                    </div>
                    <div>
                        <label for="regdate">Reg Date </label>
                       <span><%= regdate %></span>
                    </div>
                    <div>
                        <label for="regexpdate">Reg Exp Date </label>
                        <span><%= expdate %></span>
                    </div>
                    <div>
                        <label for="salesregn">Sales  Regn </label>
                        <span><%= salestax %></span>
                    </div>
                    <span>
                        <label for="sec">SEC </label>
                       <span><%= sec %></span>
                    </span>
                </span>
            </div>
        </fieldset>
        <fieldset>
            <legend> BANK DETAILS</legend>
            <div class="row">
                <span class="col-xs-12 col-sm-6">
                    <div>
                        <label for="b_code"> Bank Code </label>
                        <span><%=  bcode %></span>
                    </div>
                    <div>
                        <label for="b_name"> Bank Name  </label>
                        <span><%=  bname %></span>
                    </div>
                    <div>
                        <label for="b_city">  Bank City </label>
                        <span><%=  bcity %></span>
                    </div>
                    <span>
                        <label for="ifsc">IFSC Code </label>
                        <span><%=  ifsccode %></span>
                    </span>
                </span>
                <span class="col-xs-12 col-sm-6">
                    <div>
                        <label for="branchcode">Branch Code </label>
                        <span><%=  brcode %></span>
                    </div>
                    <div>
                        <label for="branchaddr">Branch Address </label>
                        <span>
                            <div>
                            <span><%=   bankaddress %></span>
                            </div>
                        </span>
                    </div>
                    <span>
                        <label for="accno">Account No. </label>
                        <span><%=  accountno %></span>
                    </span>
                </span>
            </div>
            <hr style="border: 1px solid black; width: 80%; align-self: center;">
            <div class="col-lg-12">2nd   Details If Any </div>
            <div class="row">
                <span class="col-xs-12 col-sm-6">
                    <div>
                        <label for="b_code">  Bank Code </label>
                       <span><%=  bcode2 %></span>
                    </div>
                    <div>
                        <label for="b_name"> Bank Name  </label>
                    <span><%=  bname2 %></span>
    </div>
                    <div>
                        <label for="b_city"> Bank City </label>
                        <span><%=  bcity2 %></span>
                    </div>
                    <span>
                        <label for="ifsc">IFSC Code </label>
                        <span><%=  ifsccode2 %></span>
                    </span>
                </span>
                <span class="col-xs-12 col-sm-6">
                    <div>
                        <label for="branchcode">Branch Code </label>
                        <span><%=  brcode2 %></span>
                    </div>
                    <div>
                        <label for="branchaddr">Branch Address </label>
                           <span><%=   bankaddress2 %></span>
                    </div>
                    <span>
                        <label for="accno">Account No. </label>
                         <span><%=  accountno2 %></span>
                    </span>
                </span>
            </div>
        </fieldset>
    <%  
		
	
	}catch(Exception e)
	{
		out.println(e);
	}
	
}	

%>

 <input type="hidden" name="vcode" value="<%=vendorcode %>">
   <strong><input type="submit" class="btn-default" name="vcode1" value="CHANGE DETAILS" style="    width: 15%;
    display: inline-block;
    background-color: rgb(159, 93, 185);
    color: white;
    padding: 14px 20px;
    margin: 8px 0;
    border: none;
    border-radius: 4px;
    cursor: pointer;"></strong>
</form>
</body>
		
	
</html>