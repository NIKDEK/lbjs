pragma solidity ^0.4.0;

import "browser/lbjs.sol";

contract test {
    
    using _string for string;
    using _int for uint;
    using _array for string[];
    using _bytes for bytes;
    
    string a = "a";
    
    string b = "b";
    
    string[] abArr = ["a","b"];
    
    string public ab = a.concat(b);
    
    uint public ablngth = ab.length();
    
    bytes public bts = ab.toBytes();
    
    string public arr = abArr.join("-");
    
    string public abst = bts.toString();
    
}