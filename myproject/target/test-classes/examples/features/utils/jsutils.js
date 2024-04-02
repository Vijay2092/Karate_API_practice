// if we define function like separately we cant call it 
// function printName(name){
//    return name
// }
  
// function printName1(){
//     return "Vijay"
// }


// for call particular function according to scenario we need to create that function inside a single function


function () {
    return {
    printName: function() { return "amod"},
    printName1: function(name) { return name},
    printName2: function(name) {
    let welcome = "Hello " + name
    return welcome
    }
    }
}