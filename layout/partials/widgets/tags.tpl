{% extends "partials/widgets/widget.tpl" %}

{% block title %}Tags{% endblock %}

{% block content %}
  {{ list_tags({
    orderby: "count",
    amount: 40
  }) }}
{% endblock %}
