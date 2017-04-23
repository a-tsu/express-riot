<bar>
  <input type="text" ref="hoge" value={ inputValue }>
  <script>
    this.inputValue = '';
    var that = this;
    obs.on("myEvent", function(text) {
      that.inputValue = text;
      that.update();
    });
  </script>
</bar>
