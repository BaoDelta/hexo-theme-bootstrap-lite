{% macro pageLink(path, isPrevious) %}
  <a href="{{ url_for(path) }}"
      class="btn btn-primary-outline {{ "pull-xs-left" if isPrevious else "pull-xs-right" }}">
    {{ "Previous" if isPrevious else "Next" }}
  </a>
{% endmacro %}

{% if page.prev or page.next %}
  <nav class="clearfix">
    {% if page.prev %}
      {% if page.prev.path %}
        {{ pageLink(page.prev.path, true) }}
      {% elif page.prev == 1 %}
        {{ pageLink(page.base, true) }}
      {% else %}
        {{ pageLink(page.prev_link, true) }}
      {% endif %}
    {% endif %}
    {% if page.next %}
      {% if page.next.path %}
        {{ pageLink(page.next.path) }}
      {% else %}
        {{ pageLink(page.next_link) }}
      {% endif %}
    {% endif %}
  </nav>
{% endif %}
