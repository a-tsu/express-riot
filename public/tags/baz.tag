<baz>
  <p>{textLength}</p>
  <script>
    var that = this;
    this.textLength = 0;
    obs.on("myEvent", function(text) {
      that.textLength = text.length;
      that.update();
    });
  </script>
</baz>
