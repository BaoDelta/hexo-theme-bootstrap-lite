{% extends "partials/widgets/widget.tpl" %}

{% block title %}Recents{% endblock %}

{% block content %}
  {{ list_posts({
    amount: config.per_page
  }) }}
{% endblock %}
