<<<<<<< HEAD
<table id="moduleheader">
    <tr>
        <td width="100%"><span class="leftheader"><a href="<{$xoops_url}>"><{$smarty.const._MD_LEXIKON_HOME}></a>
                &rarr; <a href="<{$xoops_url}>/modules/<{$lang_moduledirname}>/index.php"><{$lang_modulename}></a>
                &rarr; <{$intro}></span></td>
        <td width="100"><span class="rightheader"><nobr><{$lang_modulename}></nobr></span>
    </tr>
</table>

<div align="center" style="width: 100%;">
    <h3 class="cat" align="center"><B><{$xoops_pagetitle}></B></H3>
</div>
<br><br>

<!-- Start ranking loop -->
<{foreach item=ranking from=$rankings}>
    <table>
        <tr>
            <th class="head" colspan="6"><{if $multicats == 1}><{$lang_category}>: <{/if}><a style='color:#FFFFFF;'
                                                                                             href='<{$xoops_url}>/modules/<{$lang_moduledirname}>/category.php?categoryID=<{$ranking.cid}>'><{$ranking.title}></a>
                (<{$lang_sortby}>)
            </th>
        </tr>
        <tr>
            <td class="head" width='7%'><{$lang_rank}></td>
            <td class="head" width='53%'><{$lang_term}></td>
            <td class="head" width='5%' align='center'><{$lang_hits}></td>
            <td class="head" width='9%' align='center'>
                <nobr><{$lang_date}></nobr>
            </td>
            <{*<td class="head" width='8%' align='right'><{$lang_def}></td>*}>
        </tr>
        <!-- Start links loop -->
        <{foreach item=terms from=$ranking.terms}>
            <{*<tr class="<{cycle values="even,odd"}>">*}>
            <tr>
                <td class="even"><{$terms.rank}></td>
                <td class="odd"><a TITLE='<{$terms.definition}>'
                                   href='<{$xoops_url}>/modules/<{$lang_moduledirname}>/entry.php?entryID=<{$terms.id}>'><{$terms.title}></a>
                </td>
                <td class="even" align='center'><{$terms.counter}></td>
                <td class="odd" align='center'>
                    <nobr><{$terms.datesub}></nobr>
                </td>
                <{*<td class="even" align='right'><{$terms.definition}></td>*}>
=======
<div id="moduleheader">
    <div class="leftheader"><a href="<{$xoops_url}>"><{$smarty.const._MD_LEXIKON_HOME}></a>&nbsp;
        &rarr;&nbsp;<a href="<{$xoops_url}>/modules/<{$lang_moduledirname}>/index.php"><{$lang_modulename}></a>&nbsp;
        &rarr;&nbsp;<{$intro}></div>
    <div class="rightheader">
        <nobr><{$lang_modulename}></nobr>
    </div>
    <hr style="clear: both;">

    <div style="width: 100%; text-align: center;">
        <h2 class="cat"><{$xoops_pagetitle}></h2>
    </div>
    <br><br>

    <!-- Start ranking loop -->
    <{foreach item=ranking from=$rankings}>
        <table>
            <tr>
                <th class="head" colspan="6"><{if $multicats == 1}><{$lang_category}>: <{/if}><a style='color:#FFFFFF;'
                                                                                                 href='<{$xoops_url}>/modules/<{$lang_moduledirname}>/category.php?categoryID=<{$ranking.cid}>'><{$ranking.title}></a>
                    (<{$lang_sortby}>)
                </th>
            </tr>
            <tr>
                <td class="head" style="width:7%;"><{$lang_rank}></td>
                <td class="head" style="width:53%;"><{$lang_term}></td>
                <td class="head" style="width:5%; text-align:center;"><{$lang_hits}></td>
                <td class="head" style="width:9%; text-align:center;">
                    <nobr><{$lang_date}></nobr>
                </td>
                <{*<td class="head" style="width:8%; text-align:right;"><{$lang_def}></td>*}>
>>>>>>> f647f3534809e24590f87b815c527a51008c378b
            </tr>
            <!-- Start links loop -->
            <{foreach item=terms from=$ranking.terms}>
                <{*<tr class="<{cycle values="even,odd"}>">*}>
                <tr>
                    <td class="even"><{$terms.rank}></td>
                    <td class="odd"><a TITLE='<{$terms.definition}>'
                                       href='<{$xoops_url}>/modules/<{$lang_moduledirname}>/entry.php?entryID=<{$terms.id}>'><{$terms.title}></a>
                    </td>
                    <td class="even" style="text-align:center;"><{$terms.counter}></td>
                    <td class="odd" style="text-align:center;">
                        <nobr><{$terms.datesub}></nobr>
                    </td>
                    <{*<td class="even" style="text-align:right;"><{$terms.definition}></td>*}>
                </tr>
            <{/foreach}>
            <!-- End links loop-->
        </table>
        <br>
    <{/foreach}>
    <!-- End ranking loop -->
