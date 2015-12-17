<div class="row">
  {% for widget in theme.widgets %}
    <div class="col-xs-12 col-sm-6 col-md-12">
      {{ partial("partials/widgets/" + widget + ".tpl") }}
    </div>
  {% endfor %}
</div>
