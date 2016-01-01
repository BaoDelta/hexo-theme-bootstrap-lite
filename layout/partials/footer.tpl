<a href="#top" class="scroll-to-top text-warning" style="display: none;">
  <i class="hidden-sm-down fa fa-fw fa-3x fa-arrow-up"></i>
  <i class="hidden-md-up fa fa-fw fa-2x fa-arrow-up"></i>
</a>
<footer class="text-xs-center">
  <div id="about" class="p-y-3">
    {% if theme.profile_picture %}
      <p>
        <img src="{{ theme.profile_picture }}" class="img-fluid img-thumbnail m-x-auto"/>
      </p>
    {% endif %}
    <h2>{{ config.author }}</h2>
    <p><em>{{ config.description }}</em></p>
    <p>
      {% for icon, link in theme.social_links %}
        <a href="{{ link }}" target="{{ "_blank" if link.indexOf("mailto") != 0 and link.indexOf("/") != 0 }}"
          ><i class="fa fa-fw fa-2x fa-{{ icon }}-square"></i></a>
      {% endfor %}
    </p>
  </div>
  <div class="bg-inverse p-y-2">
    {% set current = date(null, "YYYY") %}
    <p class="m-y-1">
      {{ config.author }} <i class="fa fa-fw fa-copyright"></i>
      {{ theme.since }} {{ (" - " + current) if theme.since != current }}
    </p>
    <p class="m-y-1">
      Powered by <a href="https://hexo.io" target="_blank" class="text-warning">Hexo</a>
      <i class="fa fa-fw fa-bolt"></i>
      Theme <a href="https://github.com/BaoDelta/hexo-theme-bootstrap-lite" target="_blank" class="text-warning"
        >Bootstrap Lite</a>
    </p>
    {% if theme.github_repo %}
      <p class="m-y-1">
        <a href="{{ theme.github_repo }}" target="_blank" class="text-success">Fork me on GitHub</a>
      </p>
    {% endif %}
  </div>
</footer>
