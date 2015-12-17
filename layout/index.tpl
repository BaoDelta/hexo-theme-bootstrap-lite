{% extends "partials/layout.tpl" %}

{% block content %}
  {{ partial("partials/articles.tpl", {
    posts: page.posts
  }) }}
{% endblock %}
