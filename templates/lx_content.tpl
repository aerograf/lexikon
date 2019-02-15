<<<<<<< HEAD
<table id="moduleheader">
    <tr>
        <td width="100%"><span class="leftheader"><a href="<{$xoops_url}>"><{$smarty.const._MD_LEXIKON_HOME}></a> <img
                        src='assets/images/arrow.gif' align='absmiddle'/> <a
                        href="<{$xoops_url}>/modules/<{$lang_moduledirname}>/index.php"><{$lang_modulename}></a> <img
                        src='assets/images/arrow.gif'
                        align='absmiddle'/> <{$smarty.const._MD_LEXIKON_SYNDICATION}></span></td>
        <td width="100"><span class="rightheader"><{$lang_modulename}></span></td>
    </tr>
</table>

<h3 class="cat"><{$smarty.const._MD_LEXIKON_SYNDICATION}></h3>
<div class="intro"><{$introcontentsyn}></div>
<form name="<{$yform.name}>" action="" method="<{$yform.method}>" <{$yform.extra}> >
    <fieldset>
        <legend> <{$yform.title}> </legend>
        <br>
        <{*$smarty.const._MD_LEXIKON_SYNEXPLAIN}><br>*}>
        <{$smarty.const._INFO}>:<br>
        <UL>
            <LI style='list-style-type:disc;' ;><{$smarty.const._MD_LEXIKON_SYNEXPLAIN1}></LI>
            <LI style='list-style-type:disc;' ;><{$smarty.const._MD_LEXIKON_SYNEXPLAIN2}></LI>
            <LI style='list-style-type:disc;' ;><{$smarty.const._MD_LEXIKON_SYNEXPLAIN3}></LI>
        </UL>

        <table cellspacing="2" cellspacing="3">
            <P><br>
                <tr>
                    <td width="160" style="text-align: left; line-height: 200%;"><{$yform.elements.txt.caption}></td>
                    <td style="text-align: left;"><{$yform.elements.txt.body}></td>
                </tr>
                <tr>
                    <td width="160" style="line-height: 200%;">&nbsp;</td>
                    <td style="text-align: left;">
                        <{*<input type=button value="select all" onClick="javascript:this.form.txt.focus();this.form.txt.select();"  style="font-size: 12px; font-family: arial,verdana; border: 1 solid #336699;">*}>
                        <input type=button value="select"
                               onClick="this.form.txt.focus();this.form.txt.select(); document.execCommand('Copy')"
                               style="font-size: 12px; font-family: verdana,arial, sans-serif; "/>
                    </td>
                </tr>
        </table>
    </fieldset>
</form>

<P>&nbsp;<P>
<div align="center">
    <B><{$smarty.const._PREVIEW}></B><br>
    <IFRAME style="background-color: #FFFFFF;" ; src="<{$xoops_url}>/modules/<{$lang_moduledirname}>/syndication.php"
            frameborder="0" width="240" height="280" allowtransparency="true" topmargin="0"
            leftmargin="0" scrolling='no' marginwidth="0" marginheight="0"/>
    [Your user agent does not support frames or is currently configured not to display frames.]</IFRAME>
</div>
=======
<div id="moduleheader">
    <div class="leftheader"><a href="<{$xoops_url}>"><{$smarty.const._MD_LEXIKON_HOME}></a>&nbsp;<img src='assets/images/arrow.gif' style="vertical-align:middle;" alt="<{$lang_modulename}>">
        <!--&nbsp;<a href="<{$xoops_url}>/modules/<{$lang_moduledirname}>/"><{$lang_modulename}></a>&nbsp;<img src='assets/images/arrow.gif' style="vertical-align:middle;" alt="<{$lang_modulename}>" >-->&nbsp;<{$smarty.const._MD_LEXIKON_SYNDICATION}></div>
    <div class="rightheader"><{$smarty.const._MD_LEXIKON_SYNDICATION}></div>
    <hr style="clear: both;">

    <h2 class="cat"><{$smarty.const._MD_LEXIKON_SYNDICATION}></h2>
    <div class="intro"><{$introcontentsyn}></div>
    <form name="<{$yform.name}>" action="" method="<{$yform.method}>" <{$yform.extra}> >
        <fieldset>
            <legend>&nbsp;<{$yform.title}>&nbsp;</legend>
            <br>
            <h3 class="cat"><{$smarty.const._INFO}>:</h3>
            <ul>
                <li><{$smarty.const._MD_LEXIKON_SYNEXPLAIN1}></li>
                <li><{$smarty.const._MD_LEXIKON_SYNEXPLAIN2}></li>
                <li><{$smarty.const._MD_LEXIKON_SYNEXPLAIN3}></li>
            </ul>
            <table>
                <tr>
                    <td>
                        <table style="border-spacing: 2px; padding: 3px;">
                            <P><br>
                                <tr>
                                    <td style="text-align: left; line-height: 200%; width:160px;"><i><{$yform.elements.txt.caption}></i><img src='assets/images/arrow.gif' style="vertical-align:middle;" alt="<{$lang_modulename}>"></td>
                                    <td style="text-align: left;"><{$yform.elements.txt.body}></td>
                                </tr>
                                <tr>
                                    <td style="line-height: 200%; width:160px;">&nbsp;</td>
                                    <td style="text-align: left;">
                                        <{*<input type=button value="select all" onClick="javascript:this.form.txt.focus();this.form.txt.select();"  style="font-size: 12px; font-family: arial,verdana; border: 1 solid #336699;">*}>
                                        <input type=button value="Выбрать" onClick="this.form.txt.focus();this.form.txt.select(); document.execCommand('Copy')" style="font-size: 12px; font-family: verdana,arial; ">
                                    </td>
                                </tr>
                        </table>
                    </td>
                    <td>
                        <P>&nbsp;
                        <P>
                        <div align="center">
                            <b><{$smarty.const._PREVIEW}></b><br><br>
                            <iframe style="background-color: #FFFFFF" ; src="<{$xoops_url}>/modules/<{$lang_moduledirname}>/syndication.php" frameborder="0" width="240" height="220" allowtransparency="true" topmargin="0" leftmargin="0" scrolling='no' marginwidth="0" marginheight="0">[Your user agent
                                does not support frames or is currently configured not to display frames.]
                            </iframe>
                        </div>
                    </td>
                </tr>
                <tr>
                    <td>
                        <hr>
                        <table style="border-spacing: 2px; padding: 3px;">
                            <br>
                            <tr>
                                <td style="text-align: left; line-height: 200%; width:160px;"><i><{$yform.elements.txt.caption}></i><img src='assets/images/arrow.gif' style="vertical-align:middle;" alt="<{$lang_modulename}>"></td>
                                <td style="text-align: left;"><textarea style="font-size: 12px; font-family: arial,verdana; border: 1 solid #336699;" name="text"><{$smarty.const._MD_LEXIKON_SYNCODE_BANNER}></textarea>
                                </td>
                            </tr>
                        </table>
                    </td>
                    <td>
                        <hr>
                        <P>&nbsp;
                        <P>
                        <div style="text-align:center;">
                            <b><{$smarty.const._PREVIEW}></b><br><br>
                            <a target='_blank' href='https://www.shmel.org/'><img src='https://www.shmel.org/image/shmel_org.jpg' alt='SHMEL.ORG'></a>
                        </div>
                    </td>
                </tr>
            </table>
        </fieldset>
    </form>
>>>>>>> f647f3534809e24590f87b815c527a51008c378b
