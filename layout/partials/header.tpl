<nav id="top" class="navbar navbar-full navbar-dark bg-inverse">
  <div class="container">
    <a class="navbar-brand text-warning" href="/">{{ config.title }}</a>
    <ul class="nav navbar-nav">
      {% for text, path in theme.header_links %}
        <li class="nav-item">
          <a class="nav-link" href="{{ url_for(path) if path.indexOf("#") == -1 else path }}">{{ text }}</a>
        </li>
      {% endfor %}
    </ul>
  </div>
</nav>
