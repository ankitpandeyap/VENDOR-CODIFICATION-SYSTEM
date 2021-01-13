<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html lang="en"><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <%
    
    
    if(session.getAttribute("name")==null)
    {
    	response.sendRedirect("login.jsp");
    	

    }
    
    
    
    
    %>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta charset="UTF-8">
    <title>VENDOR DETAILS FORM</title>
    <link rel="stylesheet" href="./test_files/bootstrap.css">
    <link rel="stylesheet" href="./test_files/main.css">
   <body>
    <img src="./test_files/sail logo.png" alt="sail logo">
    <form action="vendor.jsp" method="POST" value="form">
        <fieldset>
            <legend>VENDOR DETAILS</legend>
            <div class="row">
                
                <h1 class="col-xs-12 col-sm-6" style="margin-left: 33%; font-size: 48px;">ENTER DETAILS</h1>

                
            </div>
            <div class="row">
                <span class="col-xs-12 col-sm-6">
                    <div>
                        <label for="Vendor Name">Vendor Name</label>
                        <select name="NameInitials" id="Vendor Name" value=" " required="">
                            <option value="Mr.">MR.</option>
                            <option value="Mrs.">MRS.</option>
                            <option value="Miss.">MISS.</option>
                            <option value="Ms.">MS.</option>
                            <option value="Dr.">DR.</option>
                            <option value="Dr." selected>M/S.</option>
                        </select>
                        <input type="text" name="VendorName" id="Vendor Name" required="" style="
    margin-left: 14px;
">
                    </div>
                    <div>
                        <label for="Dealing">Dealing With</label>
                        &nbsp;&nbsp;
                        <label for="Dealing" style="margin-left: 8px;">Materials</label>
                        <input type="radio" name="DealingWith" id="Dealing" value="Materials">
                        <label for="Dealing">Services</label>
                        <input type="radio" name="DealingWith" id="Dealing" value="Services">
                        <label for="Dealing">Both</label>
                        <input type="radio" name="DealingWith" id="Dealing" value="Both">
                    </div>
                    <div>
                        <label for="Name2">Vendor Name 2</label>
                        <input type="text" id="Name2" name="Name2" value=" " style="
    margin-left: 77px;
">
                    </div>
                    
                    <div>
                        <label for="Country">Country</label>
                        <select name="Country" id="Country" style="
    margin-left: 132px;
">
                            <option selected="" value="India">India</option>
                            <option value="Argentina">Argentina</option>
                            <option value="South Korea">South Korea</option>
                            <option value="China">China</option>
                            <option value="Japan">Japan</option>
                            <option value="Nepal">Nepal</option>
                            <option value="Afganistan">Afganistan</option>
                            <option value="Russia">Russia</option>
                        </select>
                    </div>
                    <div>
                        <label for="State">State</label>
                        <input type="text" name="State" id="State" value=" " style="
    margin-left: 151px;
">
                    </div>
                    <div>
                        <label for="city">City</label>
                        <input type="text" name="City" id="city" value=" " style="
    margin-left: 159px;
">
                    </div>
                    <span>
                        <label for="zipcode">Zip/PiN</label>
                        <input type="text" name="Zipcode" id="zipcode" title="Six letter Country code" placeholder="XX-XXXX" value=" " style="
    margin-left: 136px;
">
                        
                    </span>
                </span>
                <span class="col-xs-12 col-sm-6">
                    <div>
                        <label for="Address1">Address 1</label>
                        <textarea class="form-control form-group" name="Address1" id="Address1" cols="40" rows="4" style="width: 80%;" value=" "></textarea>
                    </div>
                    <div>
                        <label for="Address2">Address 2</label>
                        <textarea class="form-control form-group" name="Address2" id="Address2" cols="40" rows="4" style="width: 80%;" value=" "></textarea>
                    </div>
                    <div>
                        <label for="searchterm">Search Term</label>
                        <input type="text" id="searchterm" name="SearchTerm" value=" ">
                    </div>
                    <span>
                        <label for="postbox">P.Box No</label>
                        <input type="text" name="Postbox" id="postbox" value=" " style="
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
                        <input type="text" name="V_TELE1" id="Telephone1" value=" ">
                    </div>
                    <div>
                        <label for="Telephone2">Telephone No. 2</label>
                        <input type="text" id="Telephone2" name="V_TELE2" value=" ">
                    </div>
                    <div>
                        <label for="TelephoneExtns">Telephone Extns</label>
                        <input type="text" name="V_TELEEXTNS" id="TelephoneExtns" value=" " style="
    margin-left: -4px;
">
                    </div>
                    <div>
                        <label for="email">Email</label>
                        <input type="email" name="V_EMAIL" id="email" value=" " style="
    margin-left: 81px;
    border: 283px;
">
                    </div>
                    <span>
                        <label for="website">Website</label>
                        <input type="text" name="V_WEBSITE" id="website" value=" " style="
    margin-left: 60px;
">
                    </span>
                </span>
                <span class="col-xs-12 col-sm-6">
                    <div>
                        <label for="contactperson">Contact Person</label>
                        <input type="text" id="contactperson" name="V_CONTACTPERSON" value=" ">
                    </div>
                    <div>
                        <label for="mobno">Mobile No. </label>
                        <input type="text" name="V_MOBNO" id="mobno" value=" " style="
    margin-left: 36px;
">
                    </div>
                    <div>
                        <label for="faxno1">Fax No. 1</label>
                        <input type="text" name="V_FAXNO1" id="faxno1" value=" " style="
    margin-left: 52px;
">
                    </div>
                    <div>
                        <label for="faxno2">Fax No. 2</label>
                        <input type="text" name="V_FAXNO2" id="faxno2" value=" " style="
    margin-left: 53px;
">
                    </div>
                    <span>
                        <label for="faxextns">Fax Extns</label>
                        <input type="text" name="V_FAXEXTNS" id="faxextns" value=" " style="
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
                        <input type="date" name="V_DRUGLICDATE" id="druglicensedate" value=" " style="
    border: 161px;
    margin-left: 61px;
">
                    </div>
                    <div>
                        <label for="druglicno">Drug License No. </label>
                        <input type="text" id="druglicno" name="V_DRUGLICNO" value=" " style="
    margin-left: 71px;
">
                    </div>
                    <div>
                        <label for="ecccodea">ECC Code(Alpha Numeric) </label>
                        <input type="text" name="V_ECCCODEA" id="ecccodea" value=" ">
                    </div>
                    <div>
                        <label for="ecccoden">ECC Code(Numeric) </label>
                        <input type="text" name="V_ECCCODEN" id="ecccoden" value=" " style="
    margin-left: 49px;
">
                    </div>
                    <div>
                        <label for="excisecomm">Excise Commisionarate </label>
                        <input type="text" name="V_EXCISECOMM" id="excisecomm" value=" " style="
    margin-left: 20px;
">
                    </div>
                    <div>
                        <label for="exciseclass">Excise Classification </label>
                        <input type="text" name="V_EXCISECLASS" id="exciseclass" value=" " style="
    margin-left: 41px;
">
                    </div>
                    <span>
                        <label for="excisediv">Excise Division </label>
                        <input type="text" name="V_EXCISEDIV" id="excisediv" value=" " style="
    margin-left: 81px;
">
                    </span>
                </span>
                <span class="col-xs-12 col-sm-6">
                    <div>
                        <label for="exciseindvendor">Excise Ind Vendor </label>
                        <input type="text" id="exciseindvendor" name="V_EXCISEINDVENDOR" value=" ">
                    </div>
                    <div>
                        <label for="exciserange">Excise Range </label>
                        <input type="text" name="V_EXCISERANGE" id="exciserange" value=" " style="
    margin-left: 36px;
">
                    </div>
                    <div>
                        <label for="exciseregno">Excise Reg. No. </label>
                        <input type="text" name="V_EXCISEREGNO" id="exciseregno" value=" " style="
    margin-left: 19px;
">
                    </div>
                    <div>
                        <label for="regn">REGN </label>
                        <input type="text" name="V_REGN" id="regn" value=" " style="
    margin-left: 93px;
">
                    </div>
                    <div>
                        <label for="st">ST </label>
                        <input type="text" name="V_ST" id="st" value=" " style="
    margin-left: 119px;
">
                    </div>
                    <div>
                        <label for="vendortype">Type of Vendor</label>
                        <input type="text" name="V_TYPE" id="vendortype" value=" " style="
    margin-left: 29px;
">
                    </div>
                    <span>
                        <label for="vend">VEND</label>
                        <input type="text" name="V_VEND" id="vend" value=" " style="
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
                        <input type="text" name="V_VATREGNO" id="vatregno" value=" " style="
    margin-left: 41px;
">
                    </div>
                    <div>
                        <label for="pan">Pan No. </label>
                        <input type="text" id="pan" name="V_PAN" pattern="^[A-Z]{5}[0-9]{4}[A-Z]{1}" placeholder="XXXXXXXXXX" style="
    margin-left: 80px;
">
                    </div>
                    <div>
                        <label for="cenvat">CENVAT </label>
                        <input type="text" name="V_CENVAT" id="cenvat" value=" " style="
    margin-left: 75px;
">
                    </div>
                    <div>
                        <label for="cgct">CGCT Reg. No. </label>
                        <input type="text" name="V_CGCT" id="cgct" value=" " style="
    margin-left: 23px;
">
                    </div>
                    <div>
                        <label for="micr">MICR</label>
                        <input type="text" name="V_MICR" id="micr" value=" " style="
    margin-left: 102px;
">
                    </div>
                    <div>
                        <label for="gstin">GSTIN No. </label>
                        <input type="text" name="V_GSTIN" id="gstin" pattern="[0-9]{2}-[A-Z]{5}[0-9]{4}[A-Z]{1}-[0-9]{1}[A-Z]{1}[A-Z0-9]{1}" placeholder="XX-XXXXXXXXXX-XXX" style="
    margin-left: 59px;
">
                    </div>
                    <span>
                        <label for="servicetax">Service Tax Regn. </label>
                        <input type="text" name="V_SERVICETAX" id="servicetax" value=" ">
                    </span>
                </span>
                <span class="col-xs-12 col-sm-6">
                    <div>
                        <label for="cst">CST No. </label>
                        <input type="text" id="cst" name="V_CST" value=" " style="
    margin-left: 53px;
">
                    </div>
                    <div>
                        <label for="cstregno">CST Reg No. </label>
                        <input type="text" name="V_CSTREGNO" id="cstregno" value=" " style="
    margin-left: 19px;
">
                    </div>
                    <div>
                        <label for="lstregno">LST Reg No. </label>
                        <input type="text" name="V_LSTREGNO" id="lstregno" value=" " style="
    margin-left: 21px;
">
                    </div>
                    <div>
                        <label for="regdate">Reg Date </label>
                        <input type="date" name="V_REGDATE" id="regdate" value=" " style="
    margin-left: 48px;
    border: 134px;
">
                    </div>
                    <div>
                        <label for="regexpdate">Reg Exp Date </label>
                        <input type="date" name="V_REGEXPDATE" id="regexpdate" value=" " style="
    margin-left: 14px;
    border: 116px;
">
                    </div>
                    <div>
                        <label for="salestaxregn">Sales Tax Regn </label>
                        <input type="text" name="V_SALESTAX" id="salestaxregn" value=" ">
                    </div>
                    <span>
                        <label for="sec">SEC </label>
                        <input type="text" name="V_SEC" id="sec" value=" " style="
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
                        <input type="text" name="V_BANKCODE" id="b_code" value=" " style="
    margin-left: 37px;
">
                    </div>
                    <div>
                        <label for="b_name">Bank Name </label>
                        <input type="text" id="b_name" name="V_BANKNAME" value=" " style="
    margin-left: 35px;
">
                    </div>
                    <div>
                        <label for="b_city">Bank City </label>
                        <input type="text" name="V_BANKCITY" id="b_city" value=" " style="
    margin-left: 48px;
">
                    </div>
                    <span>
                        <label for="ifsc">IFSC Code </label>
                        <input class="GFG" type="text" name="V_IFSC" id="ifsc" pattern="[A-Z]{4}0[A-Z0-9]{6}" placeholder="XXXX0XXXXXX" style="
    margin-left: 41px;
">

                    </span>
                </span>
                <span class="col-xs-12 col-sm-6">
                    <div>
                        <label for="branchcode">Branch Code </label>
                        <input type="text" id="branchcode" name="V_BRANCHCODE" value=" ">
                    </div>
                    <div>
                        <label for="branchaddr">Branch Address </label>
                        <textarea class="form-control" type="text" name="V_BRANCHADDR" id="branchaddr" cols="40" rows="4" style="width: 80%;"></textarea>
                    </div>
                    <span>
                        <label for="accno">Account No. </label>
                        <input type="text" name="V_ACCNO" id="accno" value=" " style="
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
                        <input type="text" name="V_BANKCODE2" id="b_code" value=" " style="
    margin-left: 32px;
">
                    </div>
                    <div>
                        <label for="b_name">Bank Name </label>
                        <input type="text" id="b_name" name="V_BANKNAME2" value=" " style="
    margin-left: 29px;
">
                    </div>
                    <div>
                        <label for="b_city">Bank City </label>
                        <input type="text" name="V_BANKCITY2" id="b_city" value=" " style="
    margin-left: 43px;
">
                    </div>
                    <span>
                        <label for="ifsc">IFSC Code </label>
                        <input type="text" name="V_IFSC2" id="ifsc" pattern="^[A-Z]{4}0[A-Z 0-9]{6}" placeholder="XXXX0XXXXXX" style="
    margin-left: 34px;
">
                    </span>
                </span>
                <span class="col-xs-12 col-sm-6">
                    <div>
                        <label for="branchcode">Branch Code </label>
                        <input type="text" id="branchcode" name="V_BRANCHCODE2" value=" ">
                    </div>
                    <div>
                        <label for="branchaddr">Branch Address </label>
                        <textarea class="form-control" type="text" name="V_BRANCHADDR2" id="branchaddr" cols="40" rows="4" style="width: 80%;"></textarea>
                    </div>
                    <span>
                        <label for="accno">Account No. </label>
                        <input type="text" name="V_ACCNO2" id="accno" value=" " style="
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
        <input type="submit" class="btn-default" name="sumbitdetails" value="SUBMIT" style="
    width: 13%;
    background-color: rgb(29,129,134);
    font-size: larger;
    font-weight: bolder;
    padding: 14px 20px;
    text-decoration-style: solid;
">
        
        <input type="reset" name="resetdetails&quot;" value="RESET" class="btn-default" style="
    width: 13%;
    background-color: rgb(29,129,134);
    font-size: larger;
    font-weight: bolder;
    padding: 14px 20px;
    text-decoration-style: solid;
    margin-left: 73%;
    margin-top: 0px;
    ">.
        
    </form>


</body></html>