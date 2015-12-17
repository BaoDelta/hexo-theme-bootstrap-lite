{% extends "partials/widgets/widget.tpl" %}

{% block title %}Tag Cloud{% endblock %}

{% block content %}
  {{ tagcloud({
    min_font: 1,
    max_font: 4,
    unit: "rem"
  }) }}
{% endblock %}
