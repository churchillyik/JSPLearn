<%@ page contentType="text/html; charset=GBK" language="java" import="java.sql.*" errorPage="" %> 
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html> 
<head> 
<meta http-equiv="Content-Type" content="text/html; charset=GBK"> 
<title>�����û���</title> 
</head>

<script language="javascript">
<!-- 
  function checkuser()
  {
	if(document.form.username.value == "")	//���username���������Ϊ�� 
	{  
		
		alert("�������û���");     //������ʾ�Ի��� 
		document.form.username.focus();   //���ͣ����username������� 
	} 
	else
	{
		//������б��ύ 
		document.form.submit();
	}
  }
--> 
</script>

<body background="images/bg.gif"> 
<br> 
<script language = "JavaScript">
   var keyStr = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/=";
  //��Ansi������ַ�������Base64����
   function encode64(input) {
      var output = "";
      var chr1, chr2, chr3 = "";
      var enc1, enc2, enc3, enc4 = "";
      var i = 0;
      do {
                 chr1 = input.charCodeAt(i++);
         chr2 = input.charCodeAt(i++);
         chr3 = input.charCodeAt(i++);
         enc1 = chr1 >> 2;
         enc2 = ((chr1 & 3) << 4) | (chr2 >> 4);
         enc3 = ((chr2 & 15) << 2) | (chr3 >> 6);
         enc4 = chr3 & 63;
         if (isNaN(chr2)) {
            enc3 = enc4 = 64;
         } else if (isNaN(chr3)) {
            enc4 = 64;
         }
         output = output +
            keyStr.charAt(enc1) +
            keyStr.charAt(enc2) +
            keyStr.charAt(enc3) +
            keyStr.charAt(enc4);
         chr1 = chr2 = chr3 = "";
         enc1 = enc2 = enc3 = enc4 = "";
      } while (i < input.length);
      return output;
   }
  //��Base64�����ַ���ת����Ansi������ַ���
   function decode64(input) {
      var output = "";
      var chr1, chr2, chr3 = "";
      var enc1, enc2, enc3, enc4 = "";
      var i = 0;
         
          if(input.length%4!=0)
          {
                    return "";
          }
      var base64test = /[^A-Za-z0-9\+\/\=]/g;
          if (base64test.exec(input))
          {
                    return "";
          }
      do {
         enc1 = keyStr.indexOf(input.charAt(i++));
         enc2 = keyStr.indexOf(input.charAt(i++));
         enc3 = keyStr.indexOf(input.charAt(i++));
         enc4 = keyStr.indexOf(input.charAt(i++));
         chr1 = (enc1 << 2) | (enc2 >> 4);
         chr2 = ((enc2 & 15) << 4) | (enc3 >> 2);
         chr3 = ((enc3 & 3) << 6) | enc4;
                 
                 output = output + String.fromCharCode(chr1);
         if (enc3 != 64) {
                        output+=String.fromCharCode(chr2);
         }
         if (enc4 != 64) {
                        output+=String.fromCharCode(chr3);
         }
         chr1 = chr2 = chr3 = "";
         enc1 = enc2 = enc3 = enc4 = "";
      } while (i < input.length);
      return output;
   }
   //var de=encode64("kill1028@126.com");
   //document.writeln(de+"<br>");
</script>
<form name="form" action="weluser.jsp" method="get"> 
<table width="200" border="1" align="center"> 
  <tr> 
    <td>&nbsp;�û�����</td> 
    <td>&nbsp;<input type="text" name="username" size="10"></td> 
  </tr> 
  <tr>
	<td colspan="2" align="center"> 
	<input type="button" value="�ύ" onClick="checkuser()"> | <input type="reset" value="����"> 
	</td>
  </tr> 
</table> 
</form> 
</body> 
</html>