<my-tag>
  <input ref="some_input" oninput={rewrite} type="text" name="name" size="30" maxlength="20">
  <button onclick={ click }>{ message }</button>
  <div>  { extra } </div>

  <script>
  this.message = '何見てんのよ'
  this.extra = '最初'

  click(e) {
    if(this.message == 'つん'){
      this.message = 'でれ'
    } else {
      this.message = 'つん'
    }
    console.log(this.refs.some_input.value);
  }

  rewrite(e) {
    this.extra = e.target.value
  }
  </script>
</my-tag>
