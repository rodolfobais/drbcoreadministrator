<?php
// session_start();

//DATOS LOCALES
$arrConf['hostDB_NA']  		= 'localhost';
$arrConf['userDB_NA'] = 'admin';
$arrConf['passwordDB_NA'] = 'admin';
$arrConf['nameDB_NA'] = 'drbcoreadministrator';
$_SESSION['_BasePath'] = 'http://localhost/drbcoreadministrator/';

/*
//DATOS HOSTING
$arrConf['hostDB_NA']  		= 'mysql6.000webhost.com';
$arrConf['userDB_NA'] 		= 'a7262723_base1';
$arrConf['passwordDB_NA'] 	= 'a7262723_base1';
$arrConf['nameDB_NA'] 		= 'a7262723_base1';
$_SESSION['_BasePath'] = 'http://mablancomakeup.com.ar/mabmakeup/';
*/
$_SESSION['siteName'] = 'drbcoreadministrator';
// echo "<br/>path: ".$_SERVER['DOCUMENT_ROOT'].'/admin/configs/default.conf.php<br/>';
$_SESSION['rootSite'] = $_SERVER['DOCUMENT_ROOT'].'/drbcoreadministrator/';

// define ('_COMPANY','Nuevo Amanecer');
$_SESSION['_COMPANY'] = 'DRB Core Administrator';
$_SESSION['_TITLE'] = 'DRB Core Administrator';
// define ('_VERSION','0.1');
$_SESSION['_VERSION'] = '1.0';

?>
