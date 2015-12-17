{% extends "partials/layout.tpl" %}

{% block title %}
  {{ partial("partials/title.tpl", {
    title: page.title or page.link
  }) }}
{% endblock %}

{% block content %}
  {{ partial("partials/article.tpl", {
    post: page,
    postConfig: {
      isPost: true
    }
  }) }}
{% endblock %}
