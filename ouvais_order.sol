pragma solidity ^0.5.17;
contract order {
    address public orderOwner;
    int  public no_Of_Tshirt_You_Have;
    string  orderStatus="not complete";
    int constant t1cost=30;
    int cost;
    
    constructor () public payable {
        orderOwner=msg.sender;
    }

    function TshirtQuantityToOrder (int _quant) public {
        no_Of_Tshirt_You_Have = _quant;
        orderStatus="Completed";
    }
    
    function OrderTotal() public view returns(int)  {
        return t1cost*no_Of_Tshirt_You_Have;
    }
    
    function getStatus() public view returns(string memory)  {
        return orderStatus;
    }
    
}