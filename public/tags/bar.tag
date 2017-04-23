<bar>
  <input type="text" ref="hoge">
  <script>
    var that = this;
    obs.on("myEvent", function(text) {
      that.refs.value = text;
      that.update();
    });
  </script>
</bar>
