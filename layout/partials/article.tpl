<article class="{{ "m-b-2" if postConfig.isArchive else "m-b-3" }}">
  {% if post.link %}
    <h2>
      <a href="{{ post.link }}" target="_blank"><strong>{{ post.title or post.link }}</strong></a>
    </h2>
  {% elif post.title %}
    <h2>
      <a href="{{ url_for(post.path) }}"><strong>{{ post.title }}</strong></a>
    </h2>
  {% endif %}
  <ul class="list-inline m-y-1">
    <li class="list-inline-item">
      <em class="text-muted">{{ date(post.date) }}</em>
    </li>
    {% if (not post.title) or post.link %}
      <li class="list-inline-item">
        <a href="{{ url_for(post.path) }}"><i class="fa fa-fw fa-link"></i></a>
      </li>
    {% endif %}
    {% if post.categories and post.categories.length %}
      <li class="list-inline-item">
        {% for category in post.categories.toArray() %}
          {% if not loop.first %}
            <i class="fa fa-fw fa-angle-right"></i>
          {% endif %}
          <a href="{{ url_for(category.path) }}">{{ category.name }}</a>
        {% endfor %}
      </li>
    {% endif %}
  </ul>
  {% if not postConfig.isArchive %}
    {% if post.photos and post.photos.length %}
      {% for photo in post.photos %}
        <p>
          <img src="{{ url_for(photo) }}" class="img-fluid m-x-auto"/>
        </p>
      {% endfor %}
    {% endif %}
    <div class="m-t-1">
      {{ post.content if postConfig.isPost else post.excerpt or post.content }}
    </div>
  {% endif %}
  {% if post.tags and post.tags.length %}
    <ul class="list-inline m-y-1">
      {% for tag in post.tags.toArray() | sort(false, false, "name") %}
        <li class="list-inline-item"><a href="{{ url_for(tag.path) }}" class="label label-primary">{{ tag.name }}</a></li>
      {% endfor %}
    </ul>
  {% endif %}
</article>
