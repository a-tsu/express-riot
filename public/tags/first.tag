<first>
  <form onsubmit='{submit}'>
    <input type='text' name='username'/>
    <input type='password' name='password'/>
    <button type='submit' name='submit'>Login</button>
  </form>

  const defaultUserName = 'input user name';
  const defaultPassword = 'input password';

  this.on('mount', () => {
    this.username.value = defaultUserName;
    this.password.value = defaultPassword;
  });

  this.submit = () => {
    let canSubmit = true;

    if(!this.username.value || this.username.value === defaultUserName){
      console.log('ちゃんとユーザ入力しようよ');
      canSubmit = false;
    }

    if(!this.password.value || this.password.value === defaultPassword){
      console.log('ちゃんとパスワード入力しようよ');
      canSubmit = false;
    }

    if(!canSubmit){
      return false;
    }

    console.log('username: ', this.username.value);
    console.log('password: ', this.password.value);
  };
</first>
