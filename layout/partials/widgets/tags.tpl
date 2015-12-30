{% extends "partials/widgets/widget.tpl" %}

{% block title %}Tags{% endblock %}

{% block content %}
  {{ list_tags({
    orderby: "length",
    order: -1,
    amount: 40
  }) }}
{% endblock %}
