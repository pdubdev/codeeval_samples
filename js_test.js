function Gadget() {
  // private member
  var name = 'IPod;'
  // public function
  this.getName = function () {
    return name;
  };
}

var toy = new Gadget();
console.log(toy.name);
console.log(toy.getName());
