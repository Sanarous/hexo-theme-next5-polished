<div class="copyright">{#
#}{% set current = date(Date.now(), "YYYY") %}{#
#}&copy; {% if theme.footer.since and theme.footer.since != current %}{{ theme.footer.since }} &mdash; {% endif %}{#
#}<span itemprop="copyrightYear">{{ current }}</span>
  <span class="with-love">
    <font color="red"><i class="fa fa-heartbeat" aria-hidden="true"></i></font>
  </span>
  <span class="author" itemprop="copyrightHolder">{{ theme.footer.copyright || config.author }}</span>
  &nbsp;<a href="http://www.miitbeian.gov.cn/"><font size="1px"><font color="#222">鄂ICP备19008535号</font></font></a>

  {% if theme.post_wordcount.totalcount %}
    <span class="post-meta-divider">|</span>
    <span class="post-meta-item-icon">
      <i class="fa fa-area-chart"></i>
    </span>
    {% if theme.post_wordcount.item_text %}
      <span class="post-meta-item-text">{{ __('post.totalcount') }}&#58;</span>
    {% endif %}
    <span title="{{ __('post.totalcount') }}">{#
    #}{{ totalcount(site, '0,0.0a') }}{#
  #}</span>
  {% endif %}
</div>

{% if theme.footer.powered %}
  <div class="powered-by">{#
  #}{{ __('footer.powered', '<a class="theme-link" target="_blank" href="https://hexo.io">Hexo</a>') }}{#
#}</div>
{% endif %}

{% if theme.footer.powered and theme.footer.theme.enable %}
  <span class="post-meta-divider">|</span>
{% endif %}
<div style="width:300px;margin:0 auto; padding:0 0;">
   <a target="_blank" href="http://www.beian.gov.cn/portal/registerSystemInfo?recordcode=42011102003147" style="display:inline-block;text-decoration:none;height:20px;line-height:20px;"><img src="https://blogimage-1258928558.cos.ap-guangzhou.myqcloud.com/beian/%E5%A4%87%E6%A1%88%E5%9B%BE%E6%A0%87.png" style="float:left;width:10%;height:auto;"/><p style="float:left;height:20px;line-height:20px;margin: 0px 0px 0px 5px; color:#555;letter-spacing:0px"><font size="1px"><font color="#222">鄂公网安备 42011102003147号</font></font></p></a>
</div>

{% if theme.footer.theme.enable %}
  <div class="theme-info">{#
  #}{{ __('footer.theme') }} &mdash; {#
  #}<a class="theme-link" target="_blank" href="https://github.com/iissnan/hexo-theme-next">{#
    #}NexT.{{ theme.scheme }}{#
  #}</a>{% if theme.footer.theme.version %} v{{ theme.version }}{% endif %}{#
#}</div>
{% endif %}

{% if theme.footer.custom_text %}
  <div class="footer-custom">{#
  #}{{ theme.footer.custom_text }}{#
#}</div>
{% endif %}
