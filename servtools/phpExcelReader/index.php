<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
</head>
<body>
<style>
body{font-size:12px;FONT-FAMILY:"宋体",Tahoma,Verdana;}
table{width:690px;}
h1{font-size:24px;font-weight:bold;}
table td{border:1px solid #eee;height:20px;line-height:20px;padding:2px;font-size:16px;FONT-FAMILY:"宋体",Tahoma,Verdana;}
</style>
<?php
// Test CVS

require_once 'Excel/reader.php';


// ExcelFile($filename, $encoding);
$data = new Spreadsheet_Excel_Reader();


// Set output Encoding.
$data->setOutputEncoding('UTF-8');

/***
* if you want you can change 'iconv' to mb_convert_encoding:
* $data->setUTFEncoder('mb');
*
**/

/***
* By default rows & cols indeces start with 1
* For change initial index use:
* $data->setRowColOffset(0);
*
**/



/***
*  Some function for formatting output.
* $data->setDefaultFormat('%.2f');
* setDefaultFormat - set format for columns with unknown formatting
*
* $data->setColumnFormat(4, '%.3f');
* setColumnFormat - set format for column (apply only to number fields)
*
**/

$data->read('jjx.xls');

/*


 $data->sheets[0]['numRows'] - count rows
 $data->sheets[0]['numCols'] - count columns
 $data->sheets[0]['cells'][$i][$j] - data from $i-row $j-column

 $data->sheets[0]['cellsInfo'][$i][$j] - extended info about cell
    
    $data->sheets[0]['cellsInfo'][$i][$j]['type'] = "date" | "number" | "unknown"
        if 'type' == "unknown" - use 'raw' value, because  cell contain value with format '0.00';
    $data->sheets[0]['cellsInfo'][$i][$j]['raw'] = value if cell without format 
    $data->sheets[0]['cellsInfo'][$i][$j]['colspan'] 
    $data->sheets[0]['cellsInfo'][$i][$j]['rowspan'] 
*/

error_reporting(E_ALL ^ E_NOTICE);

//for ($i = 1; $i <= $data->sheets[0]['numRows']; $i++) {
//	for ($j = 1; $j <= $data->sheets[0]['numCols']; $j++) {
//	}
//	echo "\n";
//}http://www.huishiatc.com/servtools/phpExcelReader/index.php
unset($data->sheets[0]['cells'][1]);
if($data->sheets[0]['cells']){
	foreach($data->sheets[0]['cells'] as $k=>$v){
?>
<div style="margin-top:50px;height:964px;display:block;">
<table border="0" cellpadding="0" cellspacing="0">
  <tr>
    <td colspan="3" align="center"  style="height:63px;line-height:30px;" valign="middle"><img style="float:left;" src="logo.jpg"><h1><?php echo $v[4];?>认证考试<br />准考证</h1></td>
  </tr>
  <tr>
    <td width="45%"><p >姓&nbsp;&nbsp;名：<?php echo $v[1];?></p></td>
    <td width="10%">&nbsp;</td>
    <td width="45%"><p >考试科目：<?php echo $v[4];?></p></td>
  </tr>
  <tr>
    <td><p >登录名：<?php echo $v[7];?></p></td>
    <td>&nbsp;</td>
    <td><p >密&nbsp;&nbsp;&nbsp;&nbsp;码：<?php echo $v[8];?> </p></td>
  </tr>
  <tr>
    <td><p >身份证号：<?php echo $v[2];?></p></td>
    <td>&nbsp;</td>
    <td><p >准考证号：<?php echo $v[5];?></p></td>
  </tr>
  <tr>
    <td><p >考试时间：<?php echo $v[6];?></p></td>
    <td>&nbsp;</td>
    <td><p >课程ID:&nbsp;&nbsp; </p></td>
  </tr>
  <tr>
    <td colspan="3"><p >考试地点：<?php echo $v[3];?></p></td>
  </tr>
  <tr>
    <td colspan="3"><p >考试评估表登录网址：http://atcevaluation.autodesk.com/&nbsp; </p></td>
  </tr>
  <tr>
    <td colspan="3"><p >考试登录网址：http://www.adsk-certification.cn/&nbsp; </p></td>
  </tr>
  <tr>
    <td colspan="3"><p >厦门汇识科技咨询有限公司地址:湖里区火炬高新区新丰三路16号日华国际大厦301-B </p></td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td colspan="3"><p >考生须知： </p>
        <p>1.必须持身份证、准考证参加考试； </p>
        <p>2.开考前十五分钟进入考场，迟到三十分钟不得进入考场； </p>
        <p>3.先填写考试评估表，再进行在线考试； </p>
        <p>4.如有死机等非正常情况，可举手请老师协助解决。有关试题内容、操作方法等方面的问题不得提问。考试中不得以任何方式作弊。 </p>
    </td>
  </tr>
</table>
</div>
<?php
	}
}
?>



</body>
</html>