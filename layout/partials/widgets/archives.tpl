{% extends "partials/widgets/widget.tpl" %}

{% block title %}Archives{% endblock %}

{% block content %}
  {{ list_archives({
    type: "yearly"
  }) }}
{% endblock %}
