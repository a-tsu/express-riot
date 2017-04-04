<my-tag>
  <button onclick={ click }>{ message }</span>

  this.message = '何見てんのよ'
  <script>
  click(e) {
    //e.preventUpdate = true // your tag will not update automatically
    if(this.message == 'つん'){
      this.message = 'でれ'
    } else {
      this.message = 'つん'
    }
  }
  </script>
</my-tag>
