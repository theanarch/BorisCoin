pragma solidity ^0.5.0;

contract FirstEth {
    uint public taskCount = 0;

    struct Task {
        uint id;
        string content;
        bool completed;
    }

    mapping(uint => Task) public tasks; // uint = key, Task = value

    constructor() public {
        createTask("My first ETH task");
    }

    function createTask(string memory _content) public {
        taskCount ++;
        tasks[taskCount] = Task(taskCount, _content, false);

    }

}