{% extends "partials/layout.tpl" %}

{% block title %}
  {{ partial("partials/title.tpl", {
    title: "Tag: " + page.tag
  }) }}
{% endblock %}

{% block content %}
  {{ partial("partials/articles.tpl", {
    posts: page.posts
  }) }}
{% endblock %}
