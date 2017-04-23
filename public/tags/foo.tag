<foo>
  <input type="text" oninput={ onInput }>
  <script>
    this.onInput = function(e) {
      var text = e.target.value;
      obs.trigger("myEvent", text);
    };
  </script>
</foo>
