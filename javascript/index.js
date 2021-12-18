//following along with https://www.youtube.com/watch?v=W6NZfCO5SIk



//First javascript code!
console.log('hello world! yeee');

let name = 'Mosh';
console.log(name);

//names for variables cannot be reserved keywords
//Variable names should be meaningful
//Cannot start with a number.
//Cannot contain a space or hyphen
//Are case sensitive


//these varaibles are different
let firstName;
let FirstName;



let interestRate = 0.3;
interestRate = 1;

console.log(interestRate);


//types in javascript. 2 categories;
//1) Primitives/value types
//2) Reference types


//Primitive types:
//* String
//* Number
//* Booleans
//* Undefeined
//* NULL


let person = {
    fName: "stefan",
    lName: "maerz",
    age: 30
}

//Dot notation
person.fName = 'John';

console.log(person);
console.log(person.fName);


//Braket notation:
person['fName'] = 'Mary';
console.log(person);




//Now we handle arrays
let selectedColors = ['red', 'blue'];
selectedColors[2] = 'orange';
console.log(selectedColors)




//functions

function greet(name){
    //body of the function
    console.log("hello " + name);
}

greet('John');
greet("mary");


function square(number) {
    return number * number;
}


let number = square(2);
console.log(number)