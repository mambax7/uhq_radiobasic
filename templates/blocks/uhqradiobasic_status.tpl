<{if $block.error}>
<{$smarty.const._MB_UHQRADIOBASIC_ERROR}><{$block.errorcode}>
<{else}>
<div style="text-align: center;">
    <{if $block.statusimg}>
    <img src="<{$block.statusimg}>" alt="<{$block.status}>">
    <{else}>
    <{$block.status}>
    <{/if}>
    <{if $block.statusdetail}>
    <br/><{$block.statusdetail}>
    <{/if}>
    <{if $block.title}>
    <hr/>
    <b><{$smarty.const._MB_UHQRADIOBASIC_NOWPLAYING}></b> <br/>
    <{if $block.artist}>
    <span style="text-decoration: underline;"><{$block.artist}></span><br/>
    <{/if}>
    <{$block.title}>
    <{/if}>
    <{if $block.listeners}>
    <hr/>
    <{$block.listeners}><br/>
    <{/if}>
    <{if $block.linkurl}>
    <hr/>
    <b><{$smarty.const._MB_UHQRADIOBASIC_TUNEIN}></b>
    <{if $block.target == "pop"}>
<!--
    <SCRIPT TYPE="text/javascript">
        function uhq_popup(linkurl, popw, poph) {
            if (!window.focus) return true;
            var href;
            if (typeof(linkurl) == 'string')
                href = linkurl;
            else
                href = linkurl.href;
            window.open(href, 'uhq-radio', 'width=' + popw + ',height=' + poph + ',scrollbars=yes');
            return false;

        }
    </SCRIPT>
-->
    <a href="<{$block.linkurl}>" onClick="return uhq_popup(this, '<{$block.popw}>', '<{$block.poph}>')">
        <{$smarty.const._MB_UHQRADIOBASIC_TUNELINK}></a>
    <{else}>
    <a href="<{$block.linkurl}>" target="<{$block.target}>">
        <{$smarty.const._MB_UHQRADIOBASIC_TUNELINK}></a>
    <{/if}>
    <{/if}>
</div>
<{/if}>