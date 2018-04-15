<?php
/**
 *
 * Module: Lexikon
 * Author: Xavier JIMENEZ
 * Licence: GNU
 */

require_once  dirname(dirname(dirname(__DIR__))) . '/mainfile.php';

require_once XOOPS_ROOT_PATH . '/kernel/module.php';
require_once XOOPS_ROOT_PATH . '/modules/lexikon/class/LexikonTree.php'; // -- LionHell
require_once XOOPS_ROOT_PATH . '/class/xoopslists.php';
require_once XOOPS_ROOT_PATH . '/class/pagenav.php';
require_once XOOPS_ROOT_PATH . '/class/xoopsformloader.php';

if (file_exists(__DIR__ . '/../language/' . $xoopsConfig['language'] . '/main.php')) {
    include  dirname(__DIR__) . '/language/' . $xoopsConfig['language'] . '/main.php';
} else {
    include  dirname(__DIR__) . '/language/english/main.php';
}
require_once XOOPS_ROOT_PATH . '/modules/lexikon/class/Utility.php';
require_once XOOPS_ROOT_PATH . '/modules/lexikon/admin/functions.php';
require_once XOOPS_ROOT_PATH . '/kernel/module.php';
$xoopsModule = XoopsModule::getByDirname('lexikon');

ob_start();
//lx_adminmenu(0, _PREFERENCES);
$btnsbar = ob_get_contents();
ob_end_clean();

/**
 * @param $buf
 * @return mixed
 */
function addAdminMenu($buf)
{
    global $btnsbar;

    $pattern = [
        '#admin.php?#',
        "#(<div class='content'>)#"
    ];
    $replace = [
        'preferences.php?',
        ' $1 <br>' . $btnsbar . "<div style='clear: both;' class='content'>"
    ];
    $html    = preg_replace($pattern, $replace, $buf);

    return $html;
}

/*
* Display and capture preferences screen
*/

if (!isset($_POST['fct'])) {
    $_GET['fct'] = $_GET['fct'] = 'preferences';
}

$op    = \Xmf\Request::getCmd('op', 'showmod');


if (!isset($_POST['mod'])) {
    $_GET['mod'] = $_GET['mod'] = $xoopsModule->getVar('mid');
}
chdir(XOOPS_ROOT_PATH . '/modules/system/');
ob_start('addAdminMenu');
include XOOPS_ROOT_PATH . '/modules/system/admin.php';
ob_end_flush();
