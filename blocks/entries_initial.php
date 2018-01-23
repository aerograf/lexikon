<?php
/**
 * Module: Lexikon
 * Author: Yerres
 * adapted from xwords
 * Licence: GNU
 */
defined('XOOPS_ROOT_PATH') || exit('XOOPS root path not defined');

/**
 * @param $options
 * @return array
 */
function uchr($a) {
    if (is_scalar($a)) $a= func_get_args();
    $str= '';
    foreach ($a as $code) $str.= html_entity_decode('&#'.$code.';',ENT_NOQUOTES,'UTF-8');
    return $str;
} 
function b_lxentries_alpha_show($options)
{
    global $xoopsDB, $xoopsUser, $xoopsModule;
    $myts = MyTextSanitizer::getInstance();

    /** @var XoopsModuleHandler $moduleHandler */
    $moduleHandler = xoops_getHandler('module');
    $lexikon       = $moduleHandler->getByDirname('lexikon');
    if (!isset($lxConfig)) {
        $configHandler = xoops_getHandler('config');
        $lxConfig      = $configHandler->getConfigsByCat(0, $lexikon->getVar('mid'));
    }
    $groups       = is_object($xoopsUser) ? $xoopsUser->getGroups() : XOOPS_GROUP_ANONYMOUS;
    $gpermHandler = xoops_getHandler('groupperm');
    $module_id    = $lexikon->getVar('mid');
    $allowed_cats = $gpermHandler->getItemIds('lexikon_view', $groups, $module_id);
    $catids       = implode(',', $allowed_cats);
    $catperms     = " AND categoryID IN ($catids) ";

    $block = [];
    // To handle options in the template
    if ($options[0] == 1) {
        $block['layout'] = 1;
    } else {
        $block['layout'] = 0;
    }
    if ($options[1]) {
        $block['number'] = $options[1];
    } else {
        $block['number'] = 8;
    }
    $block['title']         = _MB_LEXIKON_TERMINITIAL;
    $block['moduledirname'] = $lexikon->dirname();
    $count                  = 0;
    $symbol        = $GLOBALS['xoopsModuleConfig']['on_off_lang_symbol'];
    $symbol_num    = $GLOBALS['xoopsModuleConfig']['on_off_lang_symbol_num'];
    $symbol_num_in = $GLOBALS['xoopsModuleConfig']['on_off_lang_symbol_num_in'];
    $symbol_num_out= $GLOBALS['xoopsModuleConfig']['on_off_lang_symbol_n_out'];
    $symbol_def    = $GLOBALS['xoopsModuleConfig']['on_off_lang_symbol_def'];
    $symbol_def_in = $GLOBALS['xoopsModuleConfig']['on_off_lang_symbol_def_in'];
    $symbol_def_out= $GLOBALS['xoopsModuleConfig']['on_off_lang_symbol_d_out'];
    $symbol_nac    = $GLOBALS['xoopsModuleConfig']['on_off_lang_symbol_nac'];
    $symbol_nac_in = $GLOBALS['xoopsModuleConfig']['on_off_lang_symbol_nac_in'];
    $symbol_nac_out= $GLOBALS['xoopsModuleConfig']['on_off_lang_symbol_l_out'];
    if (1 == $symbol_num) {
    for ($a = $symbol_num_in; $a < ($symbol_num_in + $symbol_num_out); ++$a) {
        $letterlinks = [];
        $initial     = uchr($a);
        $sql                     = $xoopsDB->query('SELECT init FROM '
                                                   . $xoopsDB->prefix('lxentries')
                                                   . " WHERE init = '$initial' AND datesub < '"
                                                   . time()
                                                   . "' AND datesub > '0' AND offline= '0' AND submit='0' AND request='0' "
                                                   . $catperms
                                                   . ' ');
        $howmany                 = $xoopsDB->getRowsNum($sql);
        $letterlinks['total']    = $howmany;
        $letterlinks['id']       = uchr($a);
        $letterlinks['linktext'] = uchr($a);
        $letterlinks['count']    = (int)$count;
            if (0 == $symbol) {
                if (0 == $letterlinks['total']) {                  
                      } else {
                      $block['initstuff'][] = $letterlinks;
                      }
                 } else {
                 $block['initstuff'][] = $letterlinks;
                 }
    }
    }
    if (1 == $symbol_def) {
    for ($a = $symbol_def_in; $a < ($symbol_def_in + $symbol_def_out); ++$a) {
        $letterlinks = [];
        $initial     = uchr($a);
        $sql                     = $xoopsDB->query('SELECT init FROM '
                                                   . $xoopsDB->prefix('lxentries')
                                                   . " WHERE init = '$initial' AND datesub < '"
                                                   . time()
                                                   . "' AND datesub > '0' AND offline= '0' AND submit='0' AND request='0' "
                                                   . $catperms
                                                   . ' ');
        $howmany                 = $xoopsDB->getRowsNum($sql);
        $letterlinks['total']    = $howmany;
        $letterlinks['id']       = uchr($a);
        $letterlinks['linktext'] = uchr($a);
        $letterlinks['count']    = (int)$count;
            if (0 == $symbol) {
                if (0 == $letterlinks['total']) {                  
                      } else {
                      $block['initstuff'][] = $letterlinks;
                      }
                 } else {
                 $block['initstuff'][] = $letterlinks;
                 }
    }
    }
    if (1 == $symbol_nac) {
    for ($a = $symbol_nac_in; $a < ($symbol_nac_in + $symbol_nac_out); ++$a) {
        $letterlinks = [];
        $initial     = uchr($a);
        $sql                     = $xoopsDB->query('SELECT init FROM '
                                                   . $xoopsDB->prefix('lxentries')
                                                   . " WHERE init = '$initial' AND datesub < '"
                                                   . time()
                                                   . "' AND datesub > '0' AND offline= '0' AND submit='0' AND request='0' "
                                                   . $catperms
                                                   . ' ');
        $howmany                 = $xoopsDB->getRowsNum($sql);
        $letterlinks['total']    = $howmany;
        $letterlinks['id']       = uchr($a);
        $letterlinks['linktext'] = uchr($a);
        $letterlinks['count']    = (int)$count;
            if (0 == $symbol) {
                if (0 == $letterlinks['total']) {                  
                      } else {
                      $block['initstuff'][] = $letterlinks;
                      }
                 } else {
                 $block['initstuff'][] = $letterlinks;
                 }
    } 
    }
    return $block;
}

/**
 * @param $options
 * @return string
 */
function b_lxentries_alpha_edit($options)
{
    $form = _ALIGN;
    $form .= "<input type='radio' name='options[0]' value='1'" . (($options[0] == 1) ? ' checked' : '') . ' />' . _YES . '&nbsp;';
    $form .= "<input type='radio' name='options[0]' value='0'" . (($options[0] == 0) ? ' checked' : '') . ' />' . _NO . '<br>';
    $form .= '' . _MB_LEXIKON_LETTERS . " <input type='text' name='options[]' value='" . $options[1] . "' />&nbsp; <br>";

    //------------
    return $form;
}
