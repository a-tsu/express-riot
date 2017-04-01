<todo>

  <h3>{ opts.title }</h3>

  <ul>
    <li each={ items.filter(whatShow) }>
      <label class={ completed: done }>
        <input type="checkbox" checked={ done } onclick={ parent.toggle }> { title }
      </label>
    </li>
  </ul>

  <form onsubmit={ add }>
    <input ref="input" onkeyup={ edit }>
    <button disabled={ !text }>Add #{ items.filter(whatShow).length + 1 }</button>

    <button type="button" disabled={ items.filter(onlyDone).length == 0 } onclick={ removeAllDone }>
    X{ items.filter(onlyDone).length } </button>

  </form>

  <button ref="submit" onclick={ saveItems }>Save</button>

  <!-- this script tag is optional -->
  <script>
    this.items = opts.items

    edit(e) {
      this.text = e.target.value
    }

    add(e) {
      if (this.text) {
        this.items.push({ title: this.text })
        this.text = this.refs.input.value = ''
      }
      e.preventDefault()
    }

    removeAllDone(e) {
      this.items = this.items.filter(function(item) {
        return !item.done
      })
    }

    saveItems(e) {
      var itemsAll = JSON.stringify(this.items);

      // フォームタグを生成
      var form = document.createElement('form');

      // フォームのmethodタイプ
      form.method = 'POST';

      // POST先
      form.action = '/';

      // POSTパラメータようにinputタグを生成
      var data = document.createElement( 'input' );

      // nameとvalueにそれぞれPOSTしたいパラメーターを追加
      data.setAttribute( 'type' , 'hidden' );
      data.setAttribute( 'name' , 'list' );
      data.setAttribute( 'value' , itemsAll );

      // フォームタグにinputタグを追加
      form.appendChild( data );

      // bodyにフォームタグを追加
      document.body.appendChild(form);

      alert(itemsAll);
      // 生成したフォームをSUBMIT
      return form.submit();
    }

    // an two example how to filter items on the list
    whatShow(item) {
      return !item.hidden
    }

    onlyDone(item) {
      return item.done
    }

    toggle(e) {
      var item = e.item
      item.done = !item.done
      return true
    }
  </script>

</todo>
