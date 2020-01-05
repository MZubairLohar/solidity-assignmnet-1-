pragma solidity ^0.5.0;

contract Admission{
    address payable public PIAIC= address (0xCA35b7d915458EF540aDe6068dFe2F44E8fa733c);
    address payable public StudentAddress = address (0x4B0897b0513fdC7C541B6d9D7E929C4e5364D2dB);
struct Student{
    string name;
    uint age;
    uint rollNo; 
    string  course;
}    
modifier paidStudent{
    if(payCounter >=1){
    _;}
}
modifier equality{
    if(studentCount == payCounter){
        _;
    }
}
modifier values{
    if( msg.value >= 2 ether){
            _;}
}
                             uint public studentCount; 
                             uint public payCounter;
        //function StudentPayAddress(address payable _add) public{
         //   StudentAddress = _add;        } 
        
                             
            function pay() payable public values(){
                            PIAIC.transfer(msg.value);
                               msg.value == 2 ether;
                            payCounter = payCounter+1;
                            studentCount = payCounter;
                         //   StudentAddress = msg.sender;
            
        }
             mapping (uint => Student) public students;
             function addStudent(string memory _name, uint _age, uint _rollNo, string memory _course) public paidStudent() equality() {
                students[_rollNo] = Student(_name,_age,_rollNo,_course);
                studentCount = studentCount+1;
                }
         function PIAICBalance() public view returns(uint){
             return PIAIC.balance;
          
         }         
}