{% extends "partials/layout.tpl" %}

{% block title %}
  {{ partial("partials/title.tpl", {
    title: "Archives" + (": " + page.year if page.year) + ("/" + page.month if page.month)
  }) }}
{% endblock %}

{% block content %}
  {{ partial("partials/articles.tpl", {
    posts: page.posts,
    postConfig: {
      isArchive: true
    }
  }) }}
{% endblock %}
