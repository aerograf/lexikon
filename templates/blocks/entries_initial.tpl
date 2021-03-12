<{if $block.layout == 1}>
<table style="border: 1px solid #ffffff; padding: 2px 4px;" align="center">
    <tbody>
    <tr>
        <{/if}>
        <{foreach item=letterlinks from=$block.initstuff}>
        <{if $block.layout == 1}>
        <td width="40"><{/if}>
            <{if $letterlinks.total}><a
                    href="<{$xoops_url}>/modules/<{$block.moduledirname}>/letter.php?init=<{$letterlinks.id}>"
                    title="[ <{$letterlinks.total}> ]"><{/if}><{$letterlinks.linktext}><{if $letterlinks.total}></A><{/if}>
            <{if $block.layout == 1}>
<<<<<<< HEAD
        </td><{if $letterlinks.count is div by $block.number }> </tr>
=======
        </td><{if $letterlinks.count % $block.number == 0}></tr>
>>>>>>> 9284f85619b90994a11e8cfdc14b806f5475a5a0
    <tr> <{/if}>
        <{/if}>
        <{/foreach}><{*$letterlinks.dir*}>
        <{if $block.layout == 1}>
    </tr>
    </tbody>
</table>
<{/if}>
