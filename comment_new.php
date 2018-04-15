<?php
/*
 * You may not change or alter any portion of this comment or credits
 * of supporting developers from this source code or any supporting source code
 * which is considered copyrighted (c) material of the original comment or credit authors.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
 */

/**
 * @copyright    {@link https://xoops.org/ XOOPS Project}
 * @license      {@link http://www.gnu.org/licenses/gpl-2.0.html GNU GPL 2 or later}
 * @package
 * @since
 * @author       XOOPS Development Team
 */

use XoopsModules\Lexikon;

include  dirname(dirname(__DIR__)) . '/mainfile.php';
/** @var Lexikon\Helper $helper */
$helper = Lexikon\Helper::getInstance();
global $xoopsUser;
$com_itemid = \Xmf\Request::getInt('com_itemid', 0, 'GET');
//--- verify that the user can post comments
//if (!isset($xoopsModuleConfig)) {
//    die();
//}
if (0 == $helper->getConfig('com_rule')) {
    die();
}    // Comments deactivated
if (0 == $helper->getConfig('com_anonpost') && !is_object($xoopsUser)) {
    die();
} // Anonymous users can't post

if ($com_itemid > 0) {
    // Get link title
    $sql    = 'SELECT entryID, term FROM ' . $xoopsDB->prefix('lxentries') . ' WHERE entryID=' . $com_itemid . ' ';
    $result = $xoopsDB->query($sql);
    $row    = $xoopsDB->fetchArray($result);
    if (!$row['entryID']) {
        redirect_header('javascript:history.go(-1)', 3, _NOPERM);
    }
    $com_replytitle = $row['term'];
    include XOOPS_ROOT_PATH . '/include/comment_new.php';
} else {
    exit();
}
