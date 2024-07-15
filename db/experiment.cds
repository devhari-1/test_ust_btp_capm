namespace foo.bar;
entity Foo {
  food : String(10);
}           //> foo.bar.Foo
context scoped {
  entity Bar : Foo {}   //> foo.bar.scoped.Bar
  context nested {
    entity Zoo {
      animal : String(10);
    }       //> foo.bar.scoped.nested.Zoo
  }
}