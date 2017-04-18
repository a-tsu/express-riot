<nest>
  <h1>YEEEEEEEAAAAAHH</h1>
    <child3></child3>
    <child2 arg={ my_nested_tag2 }></child2>
    <child1 name='my_nested_tag1'></child1>
    <script>
      this.my_nested_tag2 = '2nd child orz';
      this.for_child = '3rd child yeah';
    </script>
</nest>

<child1>
  <h3>I'm { child1 }</h3>
    <script>
      this.child1 = '1st child lol';
    </script>
</child1>

<child2>
  <h3>I'm { opts.arg }</h3>
</child2>

<child3>
  <h3>I'm { arg }</h3>
    <script>
      this.arg = this.parent.for_child;
      console.log(this.parent);
    </script>
</child3>
