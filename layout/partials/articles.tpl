{% if posts %}
  {% for post in posts.toArray() %}
    {{ partial("partials/article.tpl", {
      post: post,
      postConfig: postConfig
    }) }}
  {% endfor %}
{% endif %}
