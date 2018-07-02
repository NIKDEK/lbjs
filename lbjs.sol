pragma solidity ^0.4.0;

library _string{
    
    /*function split(string _strg)internal returns(string[]){
        string[] result;
        uint vl;
        for(uint i = 0; i < bytes(_strg).length;i++){
            
        }     
        return result;
    }*/
    
    function slice(string _strg,uint _a,uint _b)internal returns(string){
        return _strg;
    }
    
    function length(string _strg)internal returns(uint){
        bytes memory bt = bytes(_strg);
        uint result = bt.length;
        return result; 
    }
    
    function toBytes(string _strg)internal returns(bytes){
        bytes memory result = bytes(_strg);
        return result;
    }
    
    function concat(string _a, string _b)internal returns(string){
        bytes memory a = bytes(_a);
        bytes memory b = bytes(_b);
        string memory wrds = new string(a.length + b.length);
        bytes memory result = bytes(wrds);
        uint val = 0;
        for(uint i = 0; i < a.length; i++){
            result[val++] = a[i];
        }
        for(i = 0; i < b.length; i++){
            result[val++] = b[i];
        }
        return wrds;
    }
    
}


//----------------------------------int-------------------------------


library _int{
    
   // function toBytes(int _intVal)internal returns(bytes){}

}


//----------------------------------arrays-----------------------------


library _array{
    
    function concact(string _a, string _b)private returns(string){
        bytes memory a = bytes(_a);
        bytes memory b = bytes(_b);
        string memory wrds = new string(a.length + b.length);
        bytes memory result = bytes(wrds);
        uint val = 0;
        for(uint i = 0; i < a.length; i++){
            result[val++] = a[i];
        }
        for(i = 0; i < b.length; i++){
            result[val++] = b[i];
        }
        return wrds;
    }
    
    function join(string[] _arr,string _charact)internal returns(string){
        string memory result = "";
        for(uint i = 0; i <= _arr.length - 1; i++){
            result = concact(result,_arr[i]);
            if(i != _arr.length - 1){
                result = concact(result,_charact);
            }
        }
        return result;
    }
    
    //function remove(string[] _arr,string _charact) internal returns(string[]){}
   
}


//----------------------------------bytes-------------------------------


library _bytes{
    
    function toString(bytes _byte)internal returns(string){
        string memory result = string(_byte);
        return result;
    }
    
}
