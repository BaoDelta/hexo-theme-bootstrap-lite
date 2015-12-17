{% extends "partials/layout.tpl" %}

{% block title %}
  {{ partial("partials/title.tpl", {
    title: "Category: " + page.category
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
