<{* New Header block *}>
<<<<<<< HEAD
<table id="moduleheader">
    <tr>
        <td width="100%"><span class="leftheader"><a href="<{$xoops_url}>">
  <{$smarty.const._MD_LEXIKON_HOME}></a>  <img src='assets/images/arrow.gif' align='absmiddle'/> <a
                        href="<{$xoops_url}>/modules/<{$lang_moduledirname}>/index.php"><{$lang_modulename}></a> <img
                        src='assets/images/arrow.gif' align='absmiddle'/>
                <{if $pagetype == '0'}>
                    <a href="<{$xoops_url}>/modules/<{$lang_moduledirname}>/letter.php"><{$pageinitial}></a>





                                                                                                                           <{elseif $pagetype == '1'}>





                    <a href="<{$xoops_url}>/modules/<{$lang_moduledirname}>/letter.php?init=<{$pageinitial}>"><{$pageinitial}></a>
                <{/if}>
   </span>
        </td>
        <td width="100"><span class="rightheader"><{$lang_modulename}></span></td>
    </tr>
</table>

<{* Alphabet block *}>
<div class="clearer">
    <div class="toprow">
        <fieldset>
            <legend><{$smarty.const._MD_LEXIKON_BROWSELETTER}></legend><table width="100%"><tr><td style="text-align: center; vertical-align: middle;">            
            <div class="letters">
                <a href="<{$xoops_url}>/modules/<{$lang_moduledirname}>/letter.php"
                   title="[ <{$publishedwords}> ]"><{$smarty.const._MD_LEXIKON_ALL}></a></div></td><td style="text-align: center; vertical-align: middle;" width="80%"><div class="letters"> |
                <{foreach item=letterlinks from=$alpha.initial}>
                    <{if $letterlinks.total > 0}> <a href="<{$xoops_url}>/modules/<{$lang_moduledirname}>/letter.php?init=<{$letterlinks.id}>" title="[ <{$letterlinks.total}> ]" ><{/if}><{$letterlinks.linktext}>
                    <{if $letterlinks.total > 0}></a><{/if}> |
                <{/foreach}></div></td><td style="text-align: center; vertical-align: middle;"><div class="letters">
                <{if $totalother > 0}><a
                        href="<{$xoops_url}>/modules/<{$lang_moduledirname}>/letter.php?init=<{$smarty.const._MD_LEXIKON_OTHER}>"
                        title="[ <{$totalother}> ]"><{/if}><{$smarty.const._MD_LEXIKON_OTHER}>
                    <{if $totalother > 0}></a><{/if}>
            </div></td></tr></table>
        </fieldset>
=======
<div id="moduleheader">
    <div class="leftheader"><{$smarty.const._MD_LEXIKON_HOME}>&nbsp;<img src='assets/images/arrow.gif' style="vertical-align:middle;" alt="<{$lang_modulename}>">&nbsp;<a
                href="<{$xoops_url}>/modules/<{$lang_moduledirname}>/"><{$lang_modulename}></a>&nbsp;<img
                src='assets/images/arrow.gif' style="vertical-align:middle;" alt="<{$lang_modulename}>">&nbsp;
        <{if $pagetype == '0'}>
            <a href="<{$xoops_url}>/modules/<{$lang_moduledirname}>/letter.php"><{$pageinitial}></a>
            &nbsp;
        <{elseif $pagetype == '1'}>
            <a href="<{$xoops_url}>/modules/<{$lang_moduledirname}>/letter.php?init=<{$pageinitial}>"><{$pageinitial}></a>
        <{/if}>
>>>>>>> f647f3534809e24590f87b815c527a51008c378b
    </div>
    <div class="rightheader"><{$lang_modulename}></div>
    <hr style="clear: both;">

    <{* Alphabet block *}>
    <div class="clearer">
        <div class="toprow">
            <fieldset>
<<<<<<< HEAD
                <legend><{$smarty.const._MD_LEXIKON_BROWSECAT}></legend>
                <table id="Lxcategory" border="0">
                    <tr>
                        <td>
                            <a href="<{$xoops_url}>/modules/<{$lang_moduledirname}>/category.php"
                               title="[ <{$publishedwords}> ]"><{$smarty.const._MD_LEXIKON_ALLCATS}></a>
                            [<{$publishedwords}>]
                        </td>
                        <!-- Start category loop -->
                        <{foreach item=catlinks from=$block0.categories}>
                        <td>
                            <{if $catlinks.image != "" && $show_screenshot == true}>
                                <a href="<{$xoops_url}>/modules/<{$lang_moduledirname}>/category.php?categoryID=<{$catlinks.id}>"
                                   target="_parent"><img
                                            src="<{$xoops_url}>/uploads/<{$lang_moduledirname}>/categories/images/<{$catlinks.image}>"
                                            width="<{$logo_maximgwidth}>" align="left" class="floatLeft"
                                            alt="[<{$catlinks.name}>]&nbsp;[<{$catlinks.total}>]"/></A>
                            <{/if}>
                            <{if $catlinks.count > 0}>
                                <{if $catlinks.total > 0}><a href="<{$xoops_url}>/modules/<{$lang_moduledirname}>/category.php?categoryID=<{$catlinks.id}>" title="[<{$catlinks.total}>]"><{/if}><{$catlinks.linktext}>
                                <{if $catlinks.total > 0}></a> <{/if}>[<{$catlinks.total}>]
                            <{/if}>
                        </td>
                        <{if $catlinks.count is div by 4}> </tr>
                    <tr> <{/if}>
                        <{/foreach}>
                        <!-- End category loop -->
        </DIV>
        </tr></table>
        </fieldset>
    <{/if}>
<{else}>
    <{if $multicats == 1}>
        <div class="clearer">
            <fieldset class="item" style="border:1px solid #778;margin:1em 0;text-align:left;background-color:trans;">
                <legend><{$smarty.const._MD_LEXIKON_BROWSECAT}></legend>
                <div class="letters" style="margin:1em 0;width:100%;padding:0;text-align:center;line-height:1.3em;">
                    <{foreach item=catlinks from=$block0.categories}>
=======
                <legend>&nbsp;<{$smarty.const._MD_LEXIKON_BROWSELETTER}>&nbsp;</legend>
                <div class="search_abc_l">
                    <a href="<{$xoops_url}>/modules/<{$lang_moduledirname}>/letter.php"
                    ><abbr name="[&nbsp;<{$publishedwords}>&nbsp;]"><{$smarty.const._MD_LEXIKON_ALL}></abbr></a></div>
                <div class="search_abc_c">&nbsp;|
                    <{foreach item=letterlinks from=$alpha.initial}>
                        <{if $letterlinks.total > 0}>&nbsp;<a href="<{$xoops_url}>/modules/<{$lang_moduledirname}>/letter.php?init=<{$letterlinks.id}>"><abbr name="[&nbsp;<{$letterlinks.total}>&nbsp;]"><{/if}><{$letterlinks.linktext}></abbr>
                        <{if $letterlinks.total > 0}></a><{/if}>&nbsp;|
                    <{/foreach}></div>
                <div class="search_abc_r">
                    <{if $totalother > 0}>&nbsp;<a
                            href="<{$xoops_url}>/modules/<{$lang_moduledirname}>/letter.php?init=<{$smarty.const._MD_LEXIKON_OTHER}>"
                    ><abbr name="[&nbsp;<{$totalother}>&nbsp;]"><{/if}><{$smarty.const._MD_LEXIKON_OTHER}></abbr>
                        <{if $totalother > 0}></a><{/if}>
                </div>
            </fieldset>
        </div>
    </div>

    <{* Category block *}>
    <{if $layout == '0'}>
        <{if $multicats == 1 && count($block0.categories) gt 0 }>
            <div class="clearer">
                <fieldset>
                    <legend>&nbsp;<{$smarty.const._MD_LEXIKON_BROWSECAT}>&nbsp;</legend>
                    <table id="Lxcategory">
                        <tr>
                            <td>
                                <a href="<{$xoops_url}>/modules/<{$lang_moduledirname}>/category.php"
                                   title="[&nbsp;<{$publishedwords}>&nbsp;]"><{$smarty.const._MD_LEXIKON_ALLCATS}></a>
                                [<{$publishedwords}>]
                            </td>
                            <!-- Start category loop -->
                            <{foreach item=catlinks from=$block0.categories}>
                            <td>
                                <{if $catlinks.image != "" && $show_screenshot === true}>
                                    <a href="<{$xoops_url}>/modules/<{$lang_moduledirname}>/category.php?categoryID=<{$catlinks.id}>"
                                       target="_parent"><img
                                                src="<{$xoops_url}>/uploads/<{$lang_moduledirname}>/categories/images/<{$catlinks.image}>"
                                                style="width:<{$logo_maximgwidth}>; text-align: left;" class="floatLeft"
                                                alt="[&nbsp;<{$catlinks.name}>&nbsp;]&nbsp;[&nbsp;<{$catlinks.total}>&nbsp;]"></a>
                                <{/if}>
                                <{if $catlinks.count > 0}>
                                    <{if $catlinks.total > 0}><a href="<{$xoops_url}>/modules/<{$lang_moduledirname}>/category.php?categoryID=<{$catlinks.id}>" title="[&nbsp;<{$catlinks.total}>&nbsp;]"><{/if}><{$catlinks.linktext}>
                                    <{if $catlinks.total > 0}></a>&nbsp;<{/if}>[&nbsp;<{$catlinks.total}>&nbsp;]
                                <{/if}>
                            </td>
                            <{if $catlinks.count % 4 == 0}>
                        </tr>
                        <tr>
                            <{/if}>
                            <{/foreach}>
                            <!-- End category loop -->
            </div>
            </tr>
            </table>
            </fieldset>
        <{/if}>
    <{else}>
        <{if $multicats == 1}>
            <div class="clearer">
                <fieldset>
                    <legend>&nbsp;<{$smarty.const._MD_LEXIKON_BROWSECAT}>&nbsp;</legend>
                    <div class="letters">
                        <{foreach item=catlinks from=$block0.categories}>
<<<<<<< HEAD
>>>>>>> f647f3534809e24590f87b815c527a51008c378b
                        <{if $catlinks.image != "" && $show_screenshot == true}>
=======
                        <{if $catlinks.image != "" && $show_screenshot === true}>
>>>>>>> 9284f85619b90994a11e8cfdc14b806f5475a5a0
                            <a href="<{$xoops_url}>/modules/<{$lang_moduledirname}>/category.php?categoryID=<{$category.id}>"
                               target="_parent">
                                <img src="<{$xoops_url}>/uploads/<{$lang_moduledirname}>/categories/images/<{$catlinks.image}>"
<<<<<<< HEAD
                                     width="<{$logo_maximgwidth}>" align="middle"
                                     alt="[<{$catlinks.total}>]"/></A>
                        <{/if}>
                        <{if $catlinks.total > 0}><a href="<{$xoops_url}>/modules/<{$lang_moduledirname}>/category.php?categoryID=<{$catlinks.id}>" title="[<{$catlinks.total}>]"><{/if}><{$catlinks.linktext}>
                        <{if $catlinks.total > 0}></a> <{/if}>[<{$catlinks.total}>] |
                    <{/foreach}>
                    <a href="<{$xoops_url}>/modules/<{$lang_moduledirname}>/category.php"
                       title="[ <{$publishedwords}> ]"><{$smarty.const._MD_LEXIKON_ALLCATS}></a>[<{$publishedwords}>]
                </div>
            </fieldset>
        </div>
=======
                                     style="width:<{$logo_maximgwidth}> vertical-align:middle;"
                                     alt="[&nbsp;<{$catlinks.total}>&nbsp;]"></a>
                        <{/if}>
                        <{if $catlinks.total > 0}>&nbsp;<a href="<{$xoops_url}>/modules/<{$lang_moduledirname}>/category.php?categoryID=<{$catlinks.id}>" title="[&nbsp;<{$catlinks.total}>&nbsp;]"><{/if}><{$catlinks.linktext}>
                        <{if $catlinks.total > 0}></a>&nbsp;<{/if}>[&nbsp;<{$catlinks.total}>&nbsp;]
                        <{/foreach}>&nbsp;
                        <a href="<{$xoops_url}>/modules/<{$lang_moduledirname}>/category.php"
                           title="[&nbsp;<{$publishedwords}>&nbsp;]"><{$smarty.const._MD_LEXIKON_ALLCATS}></a>&nbsp;[&nbsp;<{$publishedwords}>&nbsp;]
                    </div>
                </fieldset>
            </div>
        <{/if}>
>>>>>>> f647f3534809e24590f87b815c527a51008c378b
    <{/if}>

<b>
    <{if $pagetype == '0'}>
        <h2 class="cat"><{$smarty.const._MD_LEXIKON_ALL}></h2>
        <div class="letters"><{$smarty.const._MD_LEXIKON_WEHAVE}> <{$totalentries}> <{$smarty.const._MD_LEXIKON_INALLGLOSSARIES}></div>
        <br>
        <{foreach item=eachentry from=$entriesarray.single}>
<<<<<<< HEAD
            <h4 class="term" style="clear:both;"><{$eachentry.microlinks}><a
                        href="<{$xoops_url}>/modules/<{$eachentry.dir}>/entry.php?entryID=<{$eachentry.id}>"><{$eachentry.term}></a> <{if $multicats == 1}>
                <a style='color: #456;'
                   href="<{$xoops_url}>/modules/<{$eachentry.dir}>/category.php?categoryID=<{$eachentry.catid}>">
                    [<{$eachentry.catname}>]</A><{/if}></h4>
            <div class="definition"><{$eachentry.definition}></div>
            <{if $eachentry.comments }><{$eachentry.comments}><br><{/if}>
            <br>
            <br>
=======
            <h4 class="term"><{$eachentry.microlinks}><a href="<{$xoops_url}>/modules/<{$eachentry.dir}>/entry.php?entryID=<{$eachentry.id}>"><{$eachentry.term}></a>&nbsp;<{if $multicats == 1}>
            <a class="catname_min" href="<{$xoops_url}>/modules/<{$eachentry.dir}>/category.php?categoryID=<{$eachentry.catid}>">[&nbsp;<{$eachentry.catname}>&nbsp;]</a>
            </h4><{/if}>
            <{if $eachentry.definition }>
                <div class="definition"><{$eachentry.definition}></div><{/if}>
            <{if $eachentry.comments }>
                <div class="xsmall">[&nbsp;<{$eachentry.comments}>&nbsp;]</div><{/if}>
>>>>>>> f647f3534809e24590f87b815c527a51008c378b
        <{/foreach}>
        <div align='left'><{$entriesarray.navbar}></div>
        <div class="letters"> [ <a href='javascript:history.go(-1)'><{$smarty.const._MD_LEXIKON_RETURN}></a><b> | </b><a
                    href='./index.php'><{$smarty.const._MD_LEXIKON_RETURN2INDEX}></a> ]
        </div>
    <{elseif $pagetype == '1'}>
        <h2 class="cat"><{$firstletter}></h2>
        <div class="letters"><{$smarty.const._MD_LEXIKON_WEHAVE}> <{$totalentries}> <{$smarty.const._MD_LEXIKON_BEGINWITHLETTER}></div>
        <br>
        <{foreach item=eachentry from=$entriesarray2.single}>
<<<<<<< HEAD
            <h4 class="term" style="clear:both;"><{$eachentry.microlinks}><a
                        href="<{$xoops_url}>/modules/<{$eachentry.dir}>/entry.php?entryID=<{$eachentry.id}>"><{$eachentry.term}></a> <{if $multicats == 1}>
                <a style='color: #456;'
                   href="<{$xoops_url}>/modules/<{$eachentry.dir}>/category.php?categoryID=<{$eachentry.catid}>">
                    [<{$eachentry.catname}>]</A><{/if}></h4>
            <div class="definition"><{$eachentry.definition}></div>
            <{if $eachentry.comments }><{$eachentry.comments}><br><{/if}>
            <br>
            <br>
=======
            <h4 class="term" style="clear:both;"><{$eachentry.microlinks}><a href="<{$xoops_url}>/modules/<{$eachentry.dir}>/entry.php?entryID=<{$eachentry.id}>"><{$eachentry.term}></a>&nbsp;<{if $multicats == 1}>
            <a class="catname_min" href="<{$xoops_url}>/modules/<{$eachentry.dir}>/category.php?categoryID=<{$eachentry.catid}>">[&nbsp;<{$eachentry.catname}>&nbsp;]</a>
            </h4><{/if}>
            <{if $eachentry.definition }>
                <div class="definition"><{$eachentry.definition}></div><{/if}>
            <{if $eachentry.comments }>
                <div class="xsmall">[&nbsp;<{$eachentry.comments}>&nbsp;]</div><{/if}>
>>>>>>> f647f3534809e24590f87b815c527a51008c378b
        <{/foreach}>
        <div align="left"><{$entriesarray2.navbar}></div>
        <div class='letters'> [ <a href='javascript:history.go(-1)'><{$smarty.const._MD_LEXIKON_RETURN}></a><b> | </b><a
                    href='./index.php'><{$smarty.const._MD_LEXIKON_RETURN2INDEX}></a> ]
        </div>
    <{/if}>
<<<<<<< HEAD
=======
</div>
>>>>>>> f647f3534809e24590f87b815c527a51008c378b
