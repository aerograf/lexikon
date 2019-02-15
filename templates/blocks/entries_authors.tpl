<div>
    <ul>
        <{foreach item=author from=$block.authors}>
            <li>
                <{if $block.profile}>
                    <a href="<{$xoops_url}>/modules/lexikon/profile.php?uid=<{$author.uid}>"
                       TITLE="<{$author.name}>"><{$author.name}></a>
<<<<<<< HEAD
                    (<{$author.count}>)
                <{else}>
                    <a href="<{$xoops_url}>/userinfo.php?uid=<{$author.uid}>"
                       TITLE="<{$author.name}>"><{$author.name}></a>
                    (<{$author.count}>)
=======
                    &nbsp;(&nbsp;<{$author.count}>&nbsp;)
                <{else}>
                    <a href="<{$xoops_url}>/userinfo.php?uid=<{$author.uid}>"
                       TITLE="<{$author.name}>"><{$author.name}></a>
                    &nbsp;(&nbsp;<{$author.count}>&nbsp;)
>>>>>>> f647f3534809e24590f87b815c527a51008c378b
                <{/if}>
            </li>
        <{/foreach}>
    </ul>
</div>
