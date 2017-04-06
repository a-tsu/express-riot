<submit>
    <h1>{title}</h1>

    <ul>
      <li each='{list}'>
        <a href='#{tagName || 'no_tag'}' onclick='{click}'>{title}</a>
      </li>
    </ul>

    <form onsubmit='{submit}'>
      <input type='text' name='username'/>
      <input type='password' name='password'/>
      <button type='submit' name='submit'>Login</button>
    </form>

    <script type="es6">
      // http://heribo821.hatenablog.com/entry/2016/11/22/160314

      // thisは常に常に現在のタグのインスタンスを指す
      this.list = [
        {
          tagName: 'first',
          title: 'さいしょのぺーじ'
        },
        {
          tagName: 'second',
          title: '2、2番目だと'
        },
        {
          tagName: 'third',
          title: '銅メダル！'
        },
        {
          title: 'ぶーびー'
        },
        {
          tagName: 'last',
          title: '最終ページや'
        }
      ]

      this.title = opts.title || 'HOME';

      this.click = (event) => {
          this.title = event.item.title;
      return true;
      };


      const defaultUserName = 'input user name';
      const defaultPassword = 'input password';

      this.on('mount', () => {
        this.username.value = defaultUserName;
        this.password.value = defaultPassword;
      });

      this.submit = () => {
        let canSubmit = true;

        if(!this.username.value || this.username.value === defaultUserName){
          window.alert('ちゃんとユーザ入力しようよ');
          canSubmit = false;
        }

        if(!this.password.value || this.password.value === defaultPassword){
          window.alert('ちゃんとパスワード入力しようよ');
          canSubmit = false;
        }

        if(!canSubmit){
          return false;
        }

        window.alert('username: ', this.username.value);
        window.alert('password: ', this.password.value);
      };
    </script>

</submit>
