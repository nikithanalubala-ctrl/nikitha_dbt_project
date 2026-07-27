
{% set apples = ["Gala", "Fuji", "Honeycrisp"] %}
{% for i in apples %}

  {% if i in "Gala" %}
    {{ i }} is my favorite apple!
  {% else %}
    {{ i }} is not my favorite apple.
  {% endif %}
 
{% endfor %}
