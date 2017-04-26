describe('header spec', function() {
  it('タグのマウント', function() {
    riot.mount('app')
    expect(document.querySelector('article > h1').textContent)
      .to.be('Home')
  })
})
