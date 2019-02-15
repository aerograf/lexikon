<{* Alphabet block *}>
<div class="clearer">
    <div class="toprow">
        <fieldset>
            <legend><{$smarty.const._MD_LEXIKON_BROWSELETTER}></legend><table width="100%"><tr><td style="text-align: center; vertical-align: middle;">            
            <div class="letters">
                <a href="<{$xoops_url}>/modules/<{$lang_moduledirname}>/letter.php"
<<<<<<< HEAD
                   title="[ <{$publishedwords}> ]"><{$smarty.const._MD_LEXIKON_ALL}></a></div></td><td style="text-align: center; vertical-align: middle;" width="80%"><div class="letters"> |
                <{foreach item=letterlinks from=$alpha.initial}>
                    <{if $letterlinks.total > 0}> <a href="<{$xoops_url}>/modules/<{$lang_moduledirname}>/letter.php?init=<{$letterlinks.id}>" title="[ <{$letterlinks.total}> ]" ><{/if}><{$letterlinks.linktext}>
                    <{if $letterlinks.total > 0}></a><{/if}> |
                <{/foreach}></div></td><td style="text-align: center; vertical-align: middle;"><div class="letters">
                <{if $totalother > 0}><a
                        href="<{$xoops_url}>/modules/<{$lang_moduledirname}>/letter.php?init=<{$smarty.const._MD_LEXIKON_OTHER}>"
                        title="[ <{$totalother}> ]"><{/if}><{$smarty.const._MD_LEXIKON_OTHER}>
=======
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
>>>>>>> f647f3534809e24590f87b815c527a51008c378b
                    <{if $totalother > 0}></a><{/if}>
            </div></td></tr></table>
        </fieldset>
    </div>
</div>

<{* Category block *}>
<{if $multicats == 1}>
    <div class="clearer">
<<<<<<< HEAD
        <fieldset class="item" style="border:1px solid #778;margin:1em 0;text-align:left;background-color:trans;">
            <legend><{$smarty.const._MD_LEXIKON_BROWSECAT}></legend>
            <div class="letters" style="margin:1em 0;width:100%;padding:0;text-align:center;line-height:1.3em;">
                <{foreach item=catlinks from=$block0.categories}>
                    <{if $catlinks.image != "" && $show_screenshot == '1'}>
                        <a href="<{$xoops_url}>/modules/<{$lang_moduledirname}>/category.php?categoryID=<{$category.id}>"
                           target="_parent">
                            <img src="<{$xoops_url}>/uploads/lexikon/categories/images/<{$catlinks.image}>"
                                 width="<{$logo_maximgwidth}>" align="middle" alt="[<{$catlinks.total}>]"/></A>
                    <{/if}>
                    <{if $catlinks.total > 0}><a href="<{$xoops_url}>/modules/<{$lang_moduledirname}>/category.php?categoryID=<{$catlinks.id}>" title="[<{$catlinks.total}>]"><{/if}><{$catlinks.linktext}>
                    <{if $catlinks.total > 0}></a> <{/if}>[<{$catlinks.total}>] |
                <{/foreach}>
                <a href="<{$xoops_url}>/modules/<{$lang_moduledirname}>/category.php"
                   title="[<{$publishedwords}>]"><{$smarty.const._MD_LEXIKON_ALLCATS}></a> [<{$publishedwords}>]
=======
        <fieldset>
            <legend>&nbsp;<{$smarty.const._MD_LEXIKON_BROWSECAT}>&nbsp;</legend>
            <div class="letters">
                <{foreach item=catlinks from=$block0.categories}>
                <{if $catlinks.image != "" && $show_screenshot == '1'}>
                    <a href="<{$xoops_url}>/modules/<{$lang_moduledirname}>/category.php?categoryID=<{$category.id}>"
                       target="_parent">
                        <img src="<{$xoops_url}>/uploads/<{$lang_moduledirname}>/categories/images/<{$catlinks.image}>"
                             style="width:<{$logo_maximgwidth}> vertical-align:middle;"
                             alt="[&nbsp;<{$catlinks.total}>&nbsp;]"></a>
                <{/if}>
                <{if $catlinks.total > 0}>&nbsp;<a href="<{$xoops_url}>/modules/<{$lang_moduledirname}>/category.php?categoryID=<{$catlinks.id}>" title="[&nbsp;<{$catlinks.total}>&nbsp;]"><{/if}><{$catlinks.linktext}>
                <{if $catlinks.total > 0}></a>&nbsp;<{/if}>[&nbsp;<{$catlinks.total}>&nbsp;]
                <{/foreach}>&nbsp;
                <a href="<{$xoops_url}>/modules/<{$lang_moduledirname}>/category.php"
                   title="[&nbsp;<{$publishedwords}>&nbsp;]"><{$smarty.const._MD_LEXIKON_ALLCATS}></a>&nbsp;[&nbsp;<{$publishedwords}>&nbsp;]
>>>>>>> f647f3534809e24590f87b815c527a51008c378b
            </div>
        </fieldset>
    </div>
<{/if}>
