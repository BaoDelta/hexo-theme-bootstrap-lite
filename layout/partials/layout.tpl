<!DOCTYPE html>
<html lang="{{ config.language or "en" }}">
  <head>
    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <meta http-equiv="x-ua-compatible" content="ie=edge"/>
    {{ open_graph() }}
    <title>{% block title %}{{ config.title }}{% endblock %}</title>
    {% if theme.rss %}
      <link rel="alternative" href="{{ theme.rss }}" title="{{ config.title }}" type="application/atom+xml"/>
    {% endif %}
    {{ css("https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.0.0-alpha.2/css/bootstrap.min.css") }}
    {{ css("https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.5.0/css/font-awesome.min.css") }}
    {{ css("https://cdnjs.cloudflare.com/ajax/libs/highlight.js/9.0.0/styles/" + theme.highlight_theme + ".min.css") }}
    {{ css("css/theme.css") }}
  </head>
  <body>
    {{ partial("partials/header.tpl") }}
    <div class="container">
      <div class="row">
        <div class="col-md-8 col-lg-9 m-t-3">
          {% block content %}{% endblock %}
          {{ partial("partials/pagination.tpl") }}
        </div>
        <div class="col-md-4 col-lg-3 m-t-3">
          {{ partial("partials/sidebar.tpl") }}
        </div>
      </div>
    </div>
    {{ partial("partials/footer.tpl") }}
    {% if theme.google_analytics %}
      <script>
        (function(i,s,o,g,r,a,m){i["GoogleAnalyticsObject"]=r;i[r]=i[r]||function(){
        (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
        m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
        })(window,document,"script","//www.google-analytics.com/analytics.js","ga");

        ga("create", "{{ theme.google_analytics }}", "auto");
        ga("send", "pageview");

      </script>
    {% endif %}
    {{ js("https://ajax.googleapis.com/ajax/libs/jquery/2.1.4/jquery.min.js") }}
    {{ js("https://cdnjs.cloudflare.com/ajax/libs/highlight.js/9.0.0/highlight.min.js") }}
    {{ js("js/theme.js") }}
  </body>
</html>
