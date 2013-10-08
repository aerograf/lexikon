<?php
// $Id: permissions.php,v 1.7 2004/07/26 17:51:25 hthouzard Exp $
// ------------------------------------------------------------------------ //
// XOOPS - PHP Content Management System            				        //
// Copyright (c) 2000 XOOPS.org                           					//
// <http://www.xoops.org/>                             						//
// ------------------------------------------------------------------------ //
// This program is free software; you can redistribute it and/or modify     //
// it under the terms of the GNU General Public License as published by     //
// the Free Software Foundation; either version 2 of the License, or        //
// (at your option) any later version.                                      //
// 																			//
// You may not change or alter any portion of this comment or credits       //
// of supporting developers from this source code or any supporting         //
// source code which is considered copyrighted (c) material of the          //
// original comment or credit authors.                                      //
// 																			//
// This program is distributed in the hope that it will be useful,          //
// but WITHOUT ANY WARRANTY; without even the implied warranty of           //
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the            //
// GNU General Public License for more details.                             //
// 																			//
// You should have received a copy of the GNU General Public License        //
// along with this program; if not, write to the Free Software              //
// Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307 USA //
// ------------------------------------------------------------------------ //
// adapted from News 1.5

include( "admin_header.php" );
include_once XOOPS_ROOT_PATH.'/class/xoopstree.php';
include_once XOOPS_ROOT_PATH."/class/xoopslists.php";
include_once XOOPS_ROOT_PATH . '/class/xoopsform/grouppermform.php';
$myts =& MyTextSanitizer::getInstance();
xoops_cp_header();
//lx_adminmenu(4, _AM_LEXIKON_PERMFORM);
$indexAdmin = new ModuleAdmin();
echo $indexAdmin->addNavigation('permissions.php');

$permtoset= isset($_POST['permtoset']) ? intval($_POST['permtoset']) : 1;
$selected=array('','','','');
$selected[$permtoset-1]=' selected';
echo "
	<div style='clear:both'; ><form method='post' name='fselperm' action='permissions.php'>
	<table width='100%' cellspacing='1' cellpadding='2' border='0' class='outer'><TR>
	<TD class='head' colspan='2' align='left'><FONT size='2'><b>"._AM_LEXIKON_PERMFORM."</b></FONT></TD></TR>
	<TR><TD class='odd' align='left' width='120'>
	<select name='permtoset' onChange='javascript: document.fselperm.submit()'>
	<option value='1'".$selected[0].">"._AM_LEXIKON_VIEWFORM."</option>
	<option value='2'".$selected[1].">"._AM_LEXIKON_SUBMITFORM."</option>
	<option value='3'".$selected[2].">"._AM_LEXIKON_APPROVEFORM."</option>
	<option value='4'".$selected[3].">"._AM_LEXIKON_REQUESTFORM."</option></select>
	</td><td class='odd' align='left'><input type='submit' name='go'>
	</tr></table>
	</form>";


switch($permtoset) {
	case 1:
		$title = _AM_LEXIKON_VIEWFORM;
		$perm_name = "lexikon_view";
		$permdesc = _AM_LEXIKON_VIEWFORM_DSC;
		break;
	case 2:
		$title = _AM_LEXIKON_SUBMITFORM;
		$perm_name = "lexikon_submit";
		$permdesc = _AM_LEXIKON_SUBMITFORM_DSC;
		break;
	case 3:
		$title = _AM_LEXIKON_APPROVEFORM;
		$perm_name = "lexikon_approve";
		$permdesc = _AM_LEXIKON_APPROVEFORM_DSC."<br />"._AM_LEXIKON_APPROVEPERM_WARN;
		break;
	case 4:
		$title = _AM_LEXIKON_REQUESTFORM;
		$perm_name = "lexikon_request";
		$permdesc = _AM_LEXIKON_REQUESTFORM_DSC;
		break;
}
$modid = $xoopsModule->getVar('mid');
$permform = new XoopsGroupPermForm($title, $modid, $perm_name, $permdesc, "admin/permissions.php");
$catstree = new XoopsTree($xoopsDB->prefix("lxcategories"), "categoryID", "");
$catsresult=$xoopsDB->query("SELECT categoryID, name FROM ".$xoopsDB->prefix("lxcategories")." ORDER BY weight");
while($myrow = $xoopsDB->fetchArray($catsresult)) {
  $catid = $myrow['categoryID'];
  $cattitle = $myts->htmlSpecialChars($myrow['name']);	  
  $permform->addItem($catid, $cattitle);

}	   
    
echo $permform->render();
unset ($permform);

xoops_cp_footer();	
?>