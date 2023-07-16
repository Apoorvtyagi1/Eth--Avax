pragma solidity ^0.8.0;
contract Attend {
    uint public totalAttendance;
    mapping(address => bool) public hasAttended;

    function markAtendance() public {
        require(!hasAttended[msg.sender], "Already marked");
        totalAttendance++;
        hasAttended[msg.sender] = true;
        if (totalAttendance > 100) {
            revert("marking limit exceeded"); 
        }
        assert(totalAttendance <= 100); 
    }
}
