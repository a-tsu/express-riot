<receiver>
  <p>{ message }</p>
  
  this.message = 'Zzz...'
  wakeup () {
    this.message = 'Good morning!'
    this.update()
  }
</receiver>
