<test-yield>
  <component>
    <div class='header'>
      <yield from='header' />
    </div>
    <div class='content'>
      <yield from='content' />
    </div>
    <div class='footer'>
      <yield from='footer' />
    </div>
  <component>
</test-yield>

<component>
  <yield to='header'>
    <h2>Card tag</h2>
  </yield>
  <yield to='content'>
    それは最近どうにもならぬ
  </yield>
  <yield to='footer'>
    <button>Agree</button>
    <button>Disagree</button>
  </yield>
</component>
