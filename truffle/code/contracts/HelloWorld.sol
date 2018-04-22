pragma solidity ^0.4.18;

contract HelloWorld {
  string hello;

  function HelloWorld() {
    hello = "Hello, World";
  }

  function getMessage() returns (string) {
    return hello;
  }
}
