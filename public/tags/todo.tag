<todo>
  <script type="text/javascript" src="/js/todo-tag.js"></script>
  <style>
  .demo-list-control {
    width: 300px;
    }
  </style>

  <ul class="demo-list-control mdl-list">
    <li class="mdl-list__item" each={ items }>
      <span class="mdl-list__item-primary-content">
        <label class="mdl-checkbox mdl-js-checkbox mdl-js-ripple-effect" for="checkbox-1">
          <input type="checkbox" id="checkbox-1" class="mdl-checkbox__input" checked={ done } onclick={ parent.toggle }> { title }
        </label>
      </span>
    </li>
  </ul>

  <form onsubmit={ add }>
    <input ref="input" onkeyup={ edit }>
    <button class="mdl-button mdl-js-button mdl-button--fab mdl-js-ripple-effect mdl-button--colored" disabled={ !text }>
      <i class="material-icons">add</i>
    </button>

    <button class="mdl-button mdl-js-button mdl-button--fab mdl-js-ripple-effect mdl-button--colored" type="button"
      disabled={ items.filter(onlyDone).length == 0 } onclick={ removeAllDone }>
      <i class="material-icons">delete</i>
    </button>

  </form>

  <button class="mdl-button mdl-js-button mdl-button--raised mdl-js-ripple-effect mdl-button--accent mdl-js-ripple-effect"
    ref="submit" onclick={ saveItems }>
    Save
  </button>

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
        postData(this.items);
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
